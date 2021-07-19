package com.leggo.setting;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leggo.login.IMemberLoginDAO;
import com.leggo.login.MemberLoginDTO;
import com.leggo.mail.MailSend;
import com.leggo.profile.IProfileDAO;
import com.leggo.profile.ProfileDTO;

@Controller
public class ProfileSettingController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 프로필 설정 페이지
	@RequestMapping(value = "/profilesettingpage.action", method = RequestMethod.GET)
	public String ProfileSettingPage( ModelMap model, HttpSession session)
	{
		IProfileDAO dao = sqlSession.getMapper(IProfileDAO.class);
		String mem_id = (String)session.getAttribute("mem_id");
		
		ProfileDTO profile = dao.ProfileSetting(mem_id);
		
		model.addAttribute("profile", profile);
		
		return "/WEB-INF/views/ProfileSetting.jsp";
	}
	
	// 프로필 수정
	@RequestMapping(value = "/profilesetting.action", method = RequestMethod.POST)
	public String ProfileSetting(HttpServletRequest request, HttpServletResponse response, ModelMap model, ProfileDTO dto, HttpSession session)
	{
		IProfileDAO dao = sqlSession.getMapper(IProfileDAO.class);
		
		String mem_id = (String)session.getAttribute("mem_id");
		
		dto.setMem_id(mem_id);
		
		if (dto.getMem_img() != null)
			dao.ProfileSettingImg(dto);
		
		if (dto.getMem_nnm() != null)
		{
			int count = dao.MemNnmCck(dto);
			
			if (count == 0)
				dao.ProfileSettingNnm(dto);
			else
			{
				model.addAttribute("alert_message","이미 존재하는 별명입니다.");
				
				return "redirect:profilesettingpage.action";
			}
		}
		
		if (dto.getMem_intro() != null)
			dao.ProfileSettingIntro(dto);
		
		model.addAttribute("success_message", "프로필이 수정되었습니다.");
			
		return "redirect:profilepageauto.action";
	}
}
