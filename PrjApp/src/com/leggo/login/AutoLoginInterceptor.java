package com.leggo.login;

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

public class AutoLoginInterceptor extends HandlerInterceptorAdapter
{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
	{
		// loginCookie라는 이름의 쿠키 가져오기
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		
		// 자동로그인 세션 여부 확인용 Map
		Map<String, Object> memberMap = new HashMap<>();
		
		// 쿠키가 존재할 경우
		if (loginCookie != null)
		{
			// 쿠키의 세션 아이디 가져오기
			String session_id = loginCookie.getValue();
			
			IMemberLoginDAO dao = sqlSession.getMapper(IMemberLoginDAO.class);
			memberMap = dao.AutoLoginCck(session_id);
			
			// 쿠키의 세션 아이디와 일치하는 세션 아이디가 DB에 있을 경우
			if (session_id == (String)memberMap.get("session_id"))
			{
				// 세션에 값 담아 넘겨줌
				HttpSession session = request.getSession();
				session.setAttribute("AutoLoginMemberId", (String)memberMap.get("mem_id"));
			}
		}
		
		return true;
	}
}
