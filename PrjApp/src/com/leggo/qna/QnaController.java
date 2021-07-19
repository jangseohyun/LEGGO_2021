package com.leggo.qna;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leggo.mail.MailSend;

@Controller
public class QnaController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 일대일문의 페이지
	@RequestMapping(value = "/qnapage.action", method = RequestMethod.GET)
	public String QnaPage()
	{
		return "/WEB-INF/views/QnA.jsp";
	}

}
