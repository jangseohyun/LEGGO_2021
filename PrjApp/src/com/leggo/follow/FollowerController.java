package com.leggo.follow;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leggo.mail.MailSend;
import com.leggo.profile.IProfileDAO;
import com.leggo.profile.ProfileDTO;

@Controller
public class FollowerController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 팔로워 페이지
	@RequestMapping(value = "/followerpage.action", method = RequestMethod.GET)
	public String FollowerPage(ModelMap model, HttpServletRequest request, HttpSession session)
	{
		// 로그인 세션에서 넘겨준 mem_id 받아오기
		String mem_id = (String)session.getAttribute("mem_id");
		
		IProfileDAO dao = sqlSession.getMapper(IProfileDAO.class);
		IFollowDAO followDAO = sqlSession.getMapper(IFollowDAO.class);
		
		// dao에 mem_id 넘겨주고 ProfileDTO 받기
		ProfileDTO profile = dao.ProfileSelect(mem_id);

		// 팔로워 목록 조회하기
		List<FollowDTO> followerList = new ArrayList<FollowDTO>();
		
		System.out.println("로그인 아이디: "+mem_id);
		System.out.println("팔로워 여부: "+followDAO.FollowerSelect(mem_id) != null);
		
		if (followDAO.FollowerSelect(mem_id) != null)
		{
			followerList = followDAO.FollowerSelect(mem_id);
			model.addAttribute("followerList", followerList);
		}
		
		// ProfileDTO Profile.jsp로 넘겨주기
		model.addAttribute("profile", profile);
		
		return "/WEB-INF/views/Follower.jsp";
	}
}
