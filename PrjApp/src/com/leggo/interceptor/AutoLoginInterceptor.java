package com.leggo.interceptor;

import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.leggo.login.IMemberLoginDAO;
import com.leggo.login.MemberAutoLoginDTO;

public class AutoLoginInterceptor extends HandlerInterceptorAdapter
{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
	{
		// loginCookie라는 이름의 쿠키 가져오기
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		
		// 유효기간 비교용 현재 날짜 가져오기
		Date sysdate = new Date();
		
		System.out.println("자동로그인 인터셉터 실행");
		
		// 쿠키가 존재할 경우
		if (loginCookie != null)
		{
			System.out.println("자동로그인 쿠키 존재함");
			
			// 쿠키의 세션 아이디 가져오기
			String session_id = loginCookie.getValue();

			IMemberLoginDAO dao = sqlSession.getMapper(IMemberLoginDAO.class);
			MemberAutoLoginDTO dto = dao.AutoLoginCck(session_id);
			
			// 쿠키의 세션 아이디와 일치하는 세션 아이디가 DB에 있을 경우
			if (dto != null)
			{
				System.out.println("session_id: "+dto.getSession_id());
				if (session_id.equals(dto.getSession_id()))
				{
					System.out.println(dto.getLimit_time());
					// 유효날짜가 오늘보다 이전일 경우 삭제
					if (dto.getLimit_time().before(sysdate))
					{
						dao.AutoLoginDel(session_id);
					}
					else
					{
						System.out.println("AutoLoginMemberId 생성");
						// 세션에 값 담아 넘겨줌
						HttpSession session = request.getSession();
						session.setAttribute("AutoLoginMemberId", dto.getMem_id());
						
						response.sendRedirect("profilepageauto.action");
						
						return false;
					}
				}	
			}
		}
		
		System.out.println("통과");
		
		return true;
	}
}
