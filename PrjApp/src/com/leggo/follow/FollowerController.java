package com.leggo.follow;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leggo.mail.MailSend;

@Controller
public class FollowerController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 팔로워 페이지
	@RequestMapping(value = "/followerpage.action", method = RequestMethod.GET)
	public String SendQnaPage()
	{
		return "/WEB-INF/views/Follower.jsp";
	}
}
