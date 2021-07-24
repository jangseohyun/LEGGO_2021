package com.leggo.qna;

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

	// 일대일문의 작성 페이지
	@RequestMapping(value = "/sendqnapage.action", method = RequestMethod.GET)
	public String SendQnaPage()
	{
		return "/WEB-INF/views/SendQnA.jsp";
	}
	
	// 일대일문의 작성
	@RequestMapping(value = "/sendqna.action", method = RequestMethod.GET)
	public String SendQna(QnaDTO dto, HttpSession session)
	{
		// 로그인 세션에서 넘겨준 mem_id 받아오기
		String mem_id = (String)session.getAttribute("mem_id");
		dto.setMem_id(mem_id);
		
		IQnaDAO dao = sqlSession.getMapper(IQnaDAO.class);
		
		dao.SendQna(dto);
		
		return "/WEB-INF/views/QnA.jsp";
	}
}
