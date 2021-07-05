package com.leggo.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 회원 목록 페이지 컨트롤러
	@RequestMapping(value = "/memberlist.action", method = RequestMethod.GET)
	public String MemberList(Model model)
	{
		String result = null;
		
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		model.addAttribute("list", dao.list());
		model.addAttribute("totCount", dao.totCount());
		
		result = "/WEB-INF/adminpage/AdminMember.jsp";
		
		return result;
	}
	
	@RequestMapping(value = "/memberprofile.action", method = RequestMethod.GET)
	public String memberProfile(Model model, MemberDTO m)
	{
		String result = null;
		
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		model.addAttribute("memberProfile", dao.memberProfile(m));
		
		result = "/WEB-INF/adminpage/AdminMemberProfile.jsp";
		
		return result;
	}
	
	@RequestMapping(value = "/connectStat.action", method = RequestMethod.GET)
	public String VisitantList(Model model)
	{
		String result = null;
		
		IVisitantDAO dao = sqlSession.getMapper(IVisitantDAO.class);
		
		model.addAttribute("list", dao.list());
		model.addAttribute("totCount", dao.totCount());
		model.addAttribute("dayList", dao.dayList());
		model.addAttribute("timeList", dao.timeList());
		
		result = "/WEB-INF/adminpage/AdminConnectStatistics.jsp";
		
		return result;
	}
	
}
