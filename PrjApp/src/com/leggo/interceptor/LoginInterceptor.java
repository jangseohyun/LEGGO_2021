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

public class LoginInterceptor extends HandlerInterceptorAdapter
{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
	{
		HttpSession session = request.getSession();
		
		if (session.getAttribute("mem_id") == null)
		{
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			String element = "<script>location.href='loginpage.action';</script>";
			out.println(element);
			out.flush();  	//--브라우저 출력 비우기
			out.close();	//--아웃객체 닫기
			
			return false;
		}
		
		return true;
	}
}
