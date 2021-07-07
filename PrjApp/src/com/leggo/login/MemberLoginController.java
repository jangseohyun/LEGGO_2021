package com.leggo.login;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

@Controller
public class MemberLoginController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 로그인 페이지
	@RequestMapping(value = "/loginpage.action", method = RequestMethod.GET)
	public String LoginPage(HttpServletRequest request)
	{
		// 자동로그인 세션 보유 여부 확인
		HttpSession session = request.getSession();
		String AutologinMemberId = (String)session.getAttribute("AutologinMemberId");
		
		if (AutologinMemberId != null)
		{
			session.setAttribute("mem_id", AutologinMemberId);
			
			return "profilepage.action";
		}
		else
			return "/WEB-INF/views/Login.jsp";
	}
	
	// 로그인 처리
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String Login(HttpServletRequest request, HttpServletResponse response, ModelMap model, MemberLoginDTO Logindto, MemberAutoLoginDTO Autodto)
	{
		HttpSession session = request.getSession();
		String result = null;
		
		IMemberLoginDAO dao = sqlSession.getMapper(IMemberLoginDAO.class);
	    
		// DB에서 회원 상태를 받아옴
		String MemAcctCck = dao.MemAcctCck(Logindto.getMem_id());
		
		try
		{
			if (MemAcctCck.equals("정상"))
			{
				MemberLoginDTO login = dao.Login(Logindto);
					
				// 정상 로그인
				if (login != null)
				{
					// 세션에 저장
					session.setAttribute("mem_id", login.getMem_id());
					
					if (Logindto.getLogin_cck() == null)
					{
						// 일반 회원일 경우
						if (login.getAdmin_cd() == null)
							result = "profilepage.action";
						// 관리자일 경우
						else
							result = "/WEB-INF/views/AfterLoginAdmin.jsp";
					}
					// 자동 로그인 체크했을 경우
					else if(Logindto.getLogin_cck().equals("on"))
					{
						// 로그인 세션을 쿠키에 저장
						Cookie loginCookie = new Cookie("loginCookie", session.getId());
						
						// 기본 uri 경로 페이지로 저장
						loginCookie.setPath("/*.action");
						
						// 3개월 동안 저장
						long limitTime = 60 * 60 * 24 * 90;
						loginCookie.setMaxAge((int)limitTime);
						
						// 현재시간 + limit_time(밀리초 단위로 변환)
						long expireDate = System.currentTimeMillis()+(limitTime*1000);
						
						// 저장 시간 일 단위로 변환
						Date limitDate = new Date(expireDate);
						
						Autodto.setLimit_date(limitDate);
						Autodto.setSession_id(session.getId());
						Autodto.setMem_id(login.getMem_id());
						
						// 자동로그인 세션 정보 DB에 저장
						dao.AutoLoginUpdate(Autodto);
						
						response.addCookie(loginCookie);
						
						result = "profilepage.action";
					}
				}
				// 아이디는 있는데 로그인 실패할 경우
				else
				{	
					model.addAttribute("alert_message", "비밀번호를 잘못 입력하셨습니다.");
					
					result = "redirect:loginpage.action";
				}
			}
			else if (MemAcctCck.equals("차단"))
			{
				model.addAttribute("error_message", "차단된 계정으로는 로그인하실 수 없습니다.");
				
				result = "redirect:loginpage.action";
			}
		}
		catch (Exception e)	// NullPointerException
		{
			model.addAttribute("error_message", "가입되지 않은 계정이거나 이미 탈퇴한 계정입니다.");
			
			result = "redirect:loginpage.action";
		}
		
		return result;
		
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout.action", method = RequestMethod.GET)
	public String Logout(HttpServletRequest request, HttpServletResponse response, ModelMap model)
	{
		// loginCookie라는 이름의 쿠키 가져오기
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		
		// 쿠키가 존재할 경우
		if (loginCookie != null)
		{
			IMemberLoginDAO dao = sqlSession.getMapper(IMemberLoginDAO.class);
			
			// 쿠키 유효시간 초기화 후 로컬 전송 → 0초 지나 자동 삭제
			loginCookie.setMaxAge(0);
			response.addCookie(loginCookie);

			// DB에서 자동로그인 세션 삭제
			dao.AutoLoginDel(loginCookie.getValue());
		}
		
		HttpSession session = request.getSession();
		session.invalidate();
        
        model.addAttribute("success_message", "로그아웃되었습니다.");
        
        // 메인페이지로 이어져야 함
		return "redirect:loginpage.action";
	}
}
