package com.leggo.setting;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

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

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



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
	
	// 프로필 수정-프로필 사진
	@RequestMapping(value = "/profilesettingimg.action", method = RequestMethod.POST)
	public String ProfileSetting(HttpServletRequest request, HttpServletResponse response, ModelMap model, ProfileDTO dto, HttpSession session)
	{
		return "/WEB-INF/views/ProfileSettingImg.jsp";
	}
	
	// 프로필 수정
	@RequestMapping(value = "/profilesetting.action", method = RequestMethod.POST)
	public String ProfileSetting2(HttpServletRequest request, HttpServletResponse response, ModelMap model, ProfileDTO dto, HttpSession session)
	{
		IProfileDAO dao = sqlSession.getMapper(IProfileDAO.class);
		
		String mem_id = (String)session.getAttribute("mem_id");
		
		dto.setMem_id(mem_id);
		String root = dto.getRoot();
		
		System.out.print("프로필 사진 null: ");
		System.out.println(dto.getMem_img() != null);
		
		if (root != null)
		{
			
			// 실제 물리적 주소
			System.out.println(root);

			// 저장되는 위치와 폴더
			String path = root + "pds" + File.separator + "saveData";
			
			// 확인
			System.out.println(path);
					
			// 저장 대상(디렉터리 경로)이 존재하지 않으면 생성
			File dir = new File(path);
			if (!dir.exists())
				dir.mkdirs();
			
			String encType = "UTF-8";
			int maxFileSize = 5 * 1024 * 1024;	//--전송 최대 사이즈 5M
			
			try
			{
				MultipartRequest req = null;
				req = new MultipartRequest(request, path, maxFileSize, encType, new DefaultFileRenamePolicy());
				
				System.out.println("이름: " + req.getParameter("name") + "<br>");
				System.out.println("서버에 저장된 파일명: " + req.getFilesystemName("upload") + "<br>");
				System.out.println("업로드한 파일명: " + req.getOriginalFileName("upload") + "<br>");
				System.out.println("파일 타입: " + req.getContentType("upload") + "<br>");
				
				File file = req.getFile("mem_img");
				
				if (file != null)
					System.out.println("파일 길이: " + file.length() + "<br>");
			}
			catch (Exception e)
			{
				System.out.println(e.toString());
			}

			//System.out.println("프로필 사진 변경 완료");
			//dao.ProfileSettingImg(dto);
		}
		
		if (dto.getMem_nnm() != null)
		{
			int count = dao.MemNnmCck(dto);
			
			System.out.println("별명 중복 여부: "+count);
			
			if (count == 0)
			{
				dao.ProfileSettingNnm(dto);
				System.out.println("별명 수정 완료");
			}
			else
			{
				model.addAttribute("alert_message","이미 존재하는 별명입니다.");
				
				return "redirect:profilesettingpage.action";
			}
		}
		
		if (dto.getMem_intro() != null)
		{
			dao.ProfileSettingIntro(dto);
			System.out.println("자기소개 수정 완료");
		}
		
		model.addAttribute("success_message", "프로필이 수정되었습니다.");
			
		return "redirect:profilepageauto.action";
	}
}
