package com.leggo.login;

public interface IMemberLoginDAO
{
	// 로그인
	public MemberLoginDTO Login(MemberLoginDTO dto);
	
	// 회원상태 확인(정상, 차단)
	public String MemAcctCck(String mem_id);
	
	// 자동로그인 등록
	public void AutoLoginUpdate(MemberLoginDTO dto);
	
	// 자동로그인 확인
	public String AutoLogin(String sessionId);
}
