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
public class FollowingController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 팔로잉 페이지
	@RequestMapping(value = "/followingpage.action", method = RequestMethod.GET)
	public String FollowingPage(ModelMap model, HttpServletRequest request, HttpSession session)
	{
		// 로그인 세션에서 넘겨준 mem_id 받아오기
		String mem_id = (String)session.getAttribute("mem_id");
		
		IProfileDAO profileDAO = sqlSession.getMapper(IProfileDAO.class);
		IFollowDAO followDAO = sqlSession.getMapper(IFollowDAO.class);
		
		// dao에 mem_id 넘겨주고 ProfileDTO 받기
		ProfileDTO profile = profileDAO.ProfileSelect(mem_id);
		
		// 팔로잉 목록 조회하기
		List<FollowDTO> followingList = new ArrayList<FollowDTO>();
		List<FollowPostDTO> followingpostList = new ArrayList<FollowPostDTO>();
		
		if (followDAO.FollowingSelect(mem_id) != null)
		{
			followingList = followDAO.FollowingSelect(mem_id);
			model.addAttribute("followingList", followingList);
			
			for (int i=0; i<followingList.size(); i++)
			{
				followingpostList.add(followDAO.FollowingPost(followingList.get(i).getFollow_mem_id()));
			}
			
			model.addAttribute("followingpostList", followingpostList);
		}
		
		// ProfileDTO Profile.jsp로 넘겨주기
		model.addAttribute("profile", profile);
		
		return "/WEB-INF/views/Following.jsp";
	}
}
