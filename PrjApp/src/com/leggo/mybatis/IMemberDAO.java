package com.leggo.mybatis;

import java.util.ArrayList;

public interface IMemberDAO
{
	// 회원 목록 페이지 회원 리스트
	public ArrayList<MemberDTO> list();
	
	// 대시보드 금일 가입자 수 
	public int joinCount();
	
	// 회원 상세 페이지 회원 리스트
	public MemberDTO memberProfile(MemberDTO m);
	
}
