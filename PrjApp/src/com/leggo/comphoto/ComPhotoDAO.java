/*======================
   ComPhotoDAO.java
======================*/

package com.leggo.comphoto;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class ComPhotoDAO
{
	@Autowired
	private SqlSession sqlSession;
	
	// 로그인 전 
	public ArrayList<ComPhotoDTO> photoList(ComPhotoDTO dto)
	{
		ArrayList<ComPhotoDTO> list = (ArrayList)sqlSession.selectList("photo_list", dto);
		
		return list;
	}
	
	// 로그인 후
	/*
	 * public ArrayList<ComPhotoDTO> photoListLogin(ComPhotoDTO dto) {
	 * ArrayList<ComPhotoDTO> list =
	 * (ArrayList)sqlSession.selectList("photo_list_login", dto);
	 * 
	 * return list; }
	 */
	
	public int photoCount(ComPhotoDTO dto)
	{
		int result = sqlSession.selectOne("photo_count", dto);
		
		return result;
	}
}
