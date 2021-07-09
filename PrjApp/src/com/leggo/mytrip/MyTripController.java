package com.leggo.mytrip;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leggo.mail.MailSend;

@Controller
public class MyTripController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 내 여행기 페이지
	@RequestMapping(value = "/mytrippage.action", method = RequestMethod.GET)
	public String MyTripPage()
	{
		return "/WEB-INF/views/MyTrip.jsp";
	}
}
