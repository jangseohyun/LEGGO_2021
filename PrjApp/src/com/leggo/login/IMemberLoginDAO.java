package com.leggo.login;

import java.util.Map;

public interface IMemberLoginDAO
{
	// 로그인
	public MemberLoginDTO Login(MemberLoginDTO dto);
	
	// 회원상태 확인(정상, 차단)
	public String MemAcctCck(String mem_id);
	
	// 자동로그인 등록
	public void AutoLoginUpdate(MemberAutoLoginDTO dto);
	
	// 자동로그인 확인
	public Map<String, Object> AutoLoginCck(String session_id);
	
	// 자동로그인 삭제
	public void AutoLoginDel(String session_id);
}
