package com.leggo.mybatis;

import java.util.ArrayList;

public interface IPhotoDAO
{
	// 사진 리스트
	public ArrayList<PhotoDTO> list();
	
	// 사진 총 수
	public int count();
	
	// 사진 글 상세 페이지
	public PhotoDTO photoPost(PhotoDTO p);
	
}
