/*=========================
   IComTripFeedDAO.java
   - 인터페이스
=========================*/

package com.leggo.complan;

import java.util.ArrayList;

public interface IComPlanDAO
{
	// 일정 게시물 목록
	public ArrayList<ComPlanDTO> list();
	
	// 일정 수정
	public int modify(ComPlanDTO p);
	
	// 일정 삭제
	public int remove(ComPlanDTO p);
}
