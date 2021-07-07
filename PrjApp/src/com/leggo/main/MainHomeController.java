/*==================================
   MainHomeController.java
   - 컨트롤러(사용자 정의 컨트롤러)
==================================*/

package com.leggo.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainHomeController
{
	@RequestMapping(value = "/mainhomepage.action", method = RequestMethod.GET)
	public String mainhomePage()
	{
		return "WEB-INF/views/MainHome.jsp";
	}
}
