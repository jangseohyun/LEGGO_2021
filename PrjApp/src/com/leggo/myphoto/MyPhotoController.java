package com.leggo.myphoto;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leggo.mail.MailSend;

@Controller
public class MyPhotoController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 내 사진 페이지
	@RequestMapping(value = "/myphotopage.action", method = RequestMethod.GET)
	public String MyPhotoPage()
	{
		return "/WEB-INF/views/MyPhoto.jsp";
	}
}
