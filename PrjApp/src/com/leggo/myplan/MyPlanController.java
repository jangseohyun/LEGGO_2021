package com.leggo.myplan;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leggo.mail.MailSend;

@Controller
public class MyPlanController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 내 일정 페이지
	@RequestMapping(value = "/myplanpage.action", method = RequestMethod.GET)
	public String MyPlanPage()
	{
		return "/WEB-INF/views/MyPlan.jsp";
	}
}
