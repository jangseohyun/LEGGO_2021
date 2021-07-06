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
	
	// 회원 목록 페이지 
	@RequestMapping(value = "/memberlist.action", method = RequestMethod.GET)
	public String MemberList(Model model)
	{
		String result = null;
		
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		model.addAttribute("list", dao.list());						//-- 회원리스트
		model.addAttribute("totCount", dao.totCount());				//-- 회원 총 인원
		
		result = "/WEB-INF/adminpage/AdminMember.jsp";
		
		return result;
	}
	
	// 회원 목록 상세 
	@RequestMapping(value = "/memberprofile.action", method = RequestMethod.GET)
	public String memberProfile(Model model, MemberDTO m)
	{
		String result = null;
		
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		model.addAttribute("memberProfile", dao.memberProfile(m));		//-- 회원 상세 프로필 정보
		
		result = "/WEB-INF/adminpage/AdminMemberProfile.jsp";
		
		return result;
	}
	
	// 접속자 통계 
	@RequestMapping(value = "/connectStats.action", method = RequestMethod.GET)
	public String VisitantList(Model model)
	{
		String result = null;
		
		IVisitantDAO dao = sqlSession.getMapper(IVisitantDAO.class);
		
		model.addAttribute("list", dao.list());							//-- 접속자 리스트
		model.addAttribute("totCount", dao.totCount());					//-- 접속자 로그 총 수량
		model.addAttribute("dayList", dao.dayList());					//-- 일별 접속자 수
		model.addAttribute("timeList", dao.timeList());					//-- 당일 시간별 접속자 수
		
		result = "/WEB-INF/adminpage/AdminConnectStatistics.jsp";
		
		return result;
	}
	
	// 회원 통계
	@RequestMapping(value = "/memberStats.action", method = RequestMethod.GET)
	public String joinList(Model model)
	{
		String result = null;
		
		IMemberStatsDAO dao = sqlSession.getMapper(IMemberStatsDAO.class);
		
		model.addAttribute("joinList", dao.joinList());					//-- 가입방식에 따른 가입자 수 
		model.addAttribute("joinCount", dao.joinCount());				//-- 가입일자 총 수량 
		model.addAttribute("joinMtd", dao.joinMtd());					//-- 가입 방식별 가입자 수 (그래프)
		model.addAttribute("joinDayList", dao.joinDayList());			//-- 일자별 가입자 수(그래프)
		
		model.addAttribute("qrdList", dao.qrdList());					//-- 탈퇴사유에 따른 탈퇴 회원 수
		model.addAttribute("qrdCount", dao.qrdCount());					//-- 탈퇴사유 로그 총 수량
		model.addAttribute("qrdRsn", dao.qrdRsn());						//-- 탈퇴사유별 탈퇴회원 수 (그래프)
		model.addAttribute("qrdDayList", dao.qrdDayList());				//-- 일자별 탈퇴회원 수(그래프)
		
		result = "/WEB-INF/adminpage/AdminMemberStatistics.jsp";
		
		return result;
	}
	
	// 게시물 통계
	@RequestMapping(value = "/postStats.action", method = RequestMethod.GET)
	public String postCount(Model model)
	{
		String result = null;
		
		IPostStatsDAO dao = sqlSession.getMapper(IPostStatsDAO.class);
		
		model.addAttribute("postCount", dao.postCount());
		model.addAttribute("postDayCount", dao.postDayCount());
		
		result = "/WEB-INF/adminpage/AdminPostStatistics.jsp";
		
		return result;
	}
}
