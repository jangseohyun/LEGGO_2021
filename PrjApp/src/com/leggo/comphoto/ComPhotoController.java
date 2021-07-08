/*==========================
   ComPhotoController.java
==========================*/

package com.leggo.comphoto;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ComPhotoController
{
	@Autowired
	private ComPhotoDAO photoDAO;
	
	// 사진게시글 목록
	@RequestMapping(value = "/photo_list.action")
	public String photo_list(HttpServletRequest request, HttpSession session) 
	{
	    // 한 페이지에 몇개씩 표시할 것인지
	    final int PAGE_ROW_COUNT = 6;

	    // 보여줄 페이지의 번호를 일단 1이라고 초기값 지정
	    int pageNum = 1;
	    // 페이지 번호가 파라미터로 전달되는지 읽어와 본다.
	    String strPageNum = request.getParameter("pageNum");
	    // 만일 페이지 번호가 파라미터로 넘어 온다면
	    if (strPageNum != null) 
	    {
	        // 숫자로 바꿔서 보여줄 페이지 번호로 지정한다.
	        pageNum = Integer.parseInt(strPageNum);
	    }

	    // 보여줄 페이지의 시작 ROWNUM - 0부터 시작
	    int startRowNum = 0 + (pageNum - 1) * PAGE_ROW_COUNT;
	    // 보여줄 페이지의 끝 ROWNUM
	    int endRowNum = pageNum * PAGE_ROW_COUNT;
	    
	    int rowCount = PAGE_ROW_COUNT;

	    // startRowNum 과 endRowNum를 ComPhotoDTO 객체에 담는다.
	    ComPhotoDTO dto = new ComPhotoDTO();
	    
	    dto.setStartRowNum(startRowNum);
	    dto.setEndRowNum(endRowNum);
	    dto.setRowCount(rowCount);

	    // ArrayList 객체의 참조값을 담을 지역변수를 미리 만든다.
	    ArrayList<ComPhotoDTO> list = null;
	    
	    // 전체 ROW의 개수를 담을 지역변수를 미리 만든다.
	    int totalRow = 0;

	    // 위의 분기에 따라 pto에 담기는 내용이 다르고
	    // 그 내용을 기준으로 조건이 다를때마다 다른 내용이 select 되도록 dynamic query를 구성한다.
	    // 글 목록 얻어오기

	    
	    
	    if (session.getAttribute("mem_cd") == null) 
	    {
	        // 로그인 상태가 아닐때
//	         System.out.println("로그인 상태가 아닐때 ");
	        // 사진 자랑 게시판 목록 가져오기

	        list = photoDAO.photoList(dto);
		} /*
			 * else { // 로그인 상태일때 // System.out.println("로그인 상태일때 ");
			 * 
			 * // 현재사용자의 nick을 세팅 pto.setNick((String) session.getAttribute("nick"));
			 * 
			 * // 사진자랑 게시판 목록 가져오기 list = pictureDao.boardListLogin(pto);
			 * 
			 * }
			 */
	    //글의 개수
	    totalRow = photoDAO.photoCount(dto);
	    
	    int totalPageCount = (int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
	    
	    request.setAttribute("totalPageCount", totalPageCount);
	    request.setAttribute("totalRow", totalRow);
	    // pageNum 도 추가로 담아주기
	    request.setAttribute("pageNum", pageNum);

	    /////////////////////////////////////////////////////// 여기까지 picture_ajax_page와 동일
	    /////////////////////////////////////////////////////// ajax_page는 스크롤을 내릴때 추가되는 게시물들을 가져오기 떄문에 
	    /////////////////////////////////////////////////////// best5를 가져갈 필요가 없다. 

	    return "/WEB-INF/views/ComPhotoFeed.jsp";
	}


	// 사진 목록 - 로딩으로 불러오는 게시물 리스트
	@RequestMapping(value = "/ajax_page.action")
	public String photo_ajax_page(HttpServletRequest request, HttpSession session) {
	    // 한 페이지에 몇개씩 표시할 것인지
	    final int PAGE_ROW_COUNT = 6;

	    // 보여줄 페이지의 번호를 일단 1이라고 초기값 지정
	    int pageNum = 1;
	    // 페이지 번호가 파라미터로 전달되는지 읽어와 본다.
	    String strPageNum = request.getParameter("pageNum");
	    // 만일 페이지 번호가 파라미터로 넘어 온다면
	    if (strPageNum != null) {
	        // 숫자로 바꿔서 보여줄 페이지 번호로 지정한다.
	        pageNum = Integer.parseInt(strPageNum);
	    }

	    // 보여줄 페이지의 시작 ROWNUM - 0부터 시작
	    int startRowNum = 0 + (pageNum - 1) * PAGE_ROW_COUNT;
	    // 보여줄 페이지의 끝 ROWNUM
	    int endRowNum = pageNum * PAGE_ROW_COUNT;

	    // startRowNum 과 rowCount 를  PictureTO 객체에 담고
	    ComPhotoDTO dto = new ComPhotoDTO();
	    dto.setStartRowNum(startRowNum);
	    dto.setEndRowNum(endRowNum);

	    // ArrayList 객체의 참조값을 담을 지역변수를 미리 만든다.
	    ArrayList<ComPhotoDTO> list = null;


	    // 위의 분기에 따라 pto에 담기는 내용이 다르고
	    // 그 내용을 기준으로 조건이 다를때마다 다른 내용이 select 되도록 dynamic query를 구성한다.
	    // 글 목록 얻어오기

	    if (session.getAttribute("mem_cd") == null) {
	        // 로그인 상태가 아닐때
	        System.out.println("로그인 상태가 아닐때 ");
	        // 사진 자랑 게시판 목록 가져오기

	        list = photoDAO.photoList(dto);
		} /*
			 * else { // 로그인 상태일때 // System.out.println("로그인 상태일때 ");
			 * 
			 * // 현재사용자의 nick을 세팅 pto.setNick((String) session.getAttribute("nick"));
			 * 
			 * // 사진자랑 게시판 목록 가져오기 list = pictureDao.boardListLogin(pto);
			 * 
			 * }
			 */

	    /////////////////////////////////////////////////////// 여기까지 picture_list와 동일
	    /////////////////////////////////////////////////////// ajax_page는 스크롤을 내릴때 추가되는 게시물들을 가져오기 떄문에 
	    /////////////////////////////////////////////////////// best5를 가져갈 필요가 없다. 

	    return "WEB-INF/views/ajax_page";
	}
}
