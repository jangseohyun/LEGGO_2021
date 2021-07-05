package com.leggo.signin;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leggo.mail.MailSend;

@Controller
public class MemberSigninController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 로그인 페이지
	@RequestMapping(value = "/signinpage.action", method = RequestMethod.GET)
	public String SigninPage()
	{
		return "/WEB-INF/views/Signin.jsp";
	}
	
	// 로그인 페이지 컨트롤러
	@RequestMapping(value = "/signin.action", method = RequestMethod.GET)
	public String Signin(MemberSigninDTO dto)
	{
		String result = null;
		
		IMemberSigninDAO dao = sqlSession.getMapper(IMemberSigninDAO.class);
		dao.Signin(dto);
		
		MailSend ms = new MailSend(); ms.MailSend(dto.getMem_id());
		
		result = "redirect:loginpage.action";
		
		return result;
	}
	
}
