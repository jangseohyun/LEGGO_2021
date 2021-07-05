package com.leggo.login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberLoginController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 로그인 페이지
	@RequestMapping(value = "/loginpage.action", method = RequestMethod.GET)
	public String LoginPage()
	{
		return "/WEB-INF/views/Login.jsp";
	}
	
	// 로그인 페이지 컨트롤러
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String Login(ModelMap model, MemberLoginDTO dto)
	{
		String result = null;
		
		IMemberLoginDAO dao = sqlSession.getMapper(IMemberLoginDAO.class);
		
		try
		{
			MemberLoginDTO login = dao.Login(dto);
			
			model.addAttribute("login", login);
			
			if (login.getAdmin_cd() == null)
				result = "/WEB-INF/views/AfterLogin.jsp";
			else
				result = "/WEB-INF/views/AfterLoginAdmin.jsp";
			
			if (login == null)
			{
				model.addAttribute("message", "아이디 혹은 비밀번호를 잘못 입력하셨습니다.");
				
				result = "redirect:loginpage.action";
			}
			
		}
		catch (Exception e)
		{
			model.addAttribute("message", "아이디 혹은 비밀번호를 잘못 입력하셨습니다.");
			
			result = "redirect:loginpage.action";
		}
		
		return result;
		
	}
	
}
