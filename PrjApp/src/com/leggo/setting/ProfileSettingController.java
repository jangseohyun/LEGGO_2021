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
	public String ProfileSettingPage()
	{
		return "/WEB-INF/views/ProfileSetting.jsp";
	}
	
	// 프로필 설정 페이지(프로필 사진)
	@RequestMapping(value = "/profilesetting.action", method = RequestMethod.GET)
	public String ProfileSetting(HttpServletRequest request, HttpServletResponse response, ModelMap model, HttpSession session)
	{
		IProfileDAO dao = sqlSession.getMapper(IProfileDAO.class);
		
		String mem_id = (String)session.getAttribute("mem_id");
		
		ProfileDTO dto = dao.ProfileSetting(mem_id);
		
		if (dto.getMem_img() != null)
			dao.ProfileSettingImg(mem_id,dto.getMem_img());
		
		if (dto.getMem_nnm() != null)
			dao.ProfileSettingNnm(mem_id,dto.getMem_nnm());
		
		if (dto.getMem_intro() != null)
			dao.ProfileSettingIntro(mem_id,dto.getMem_intro());
			
		return "redirect:profilepageauto.action";
	}
}