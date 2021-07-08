/*=========================
   IComTripFeedDAO.java
   - 인터페이스
=========================*/

package com.leggo.comtrip;

import java.util.ArrayList;

public interface IComTripDAO
{
	// 여행기 게시물 목록
	public ArrayList<ComTripDTO> list();
	
	// 여행기 수정
	public int modify(ComTripDTO c);
	
	// 여행기 삭제
	public int remove(ComTripDTO c);
}
