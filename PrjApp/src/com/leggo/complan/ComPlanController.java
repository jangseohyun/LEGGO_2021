/*===========================
   ComPlanController.java
===========================*/

package com.leggo.complan;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ComPlanController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 일정 피드 페이지
	@RequestMapping(value = "/complanfeed.action", method = RequestMethod.GET)
	public String ComPlanFeed(Model model)
	{
		String result = null;
		
		IComPlanDAO dao = sqlSession.getMapper(IComPlanDAO.class);
		
		model.addAttribute("list", dao.list());
		
		result = "/WEB-INF/views/ComPlanFeed.jsp";
		
		return result;
	}
}
