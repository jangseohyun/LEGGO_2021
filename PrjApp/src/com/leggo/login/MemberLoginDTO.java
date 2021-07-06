package com.leggo.login;

import java.util.Date;

public class MemberLoginDTO
{
	private String mem_cd, acct_st;		//--회원 코드, 회원 상태
	private String mem_id, mem_pw;		//--아이디, 비밀번호, 닉네임
	private String admin_cd;			//--관리자 코드
	private String login_cck;			//--자동로그인 체크 여부
	private String session_id;			//--세션 아이디
	private Date limit_date;			//--쿠키 지속 기간
	
	public String getMem_cd()
	{
		return mem_cd;
	}
	public void setMem_cd(String mem_cd)
	{
		this.mem_cd = mem_cd;
	}
	public String getAcct_st()
	{
		return acct_st;
	}
	public void setAcct_st(String acct_st)
	{
		this.acct_st = acct_st;
	}
	public String getMem_id()
	{
		return mem_id;
	}
	public void setMem_id(String mem_id)
	{
		this.mem_id = mem_id;
	}
	public String getMem_pw()
	{
		return mem_pw;
	}
	public void setMem_pw(String mem_pw)
	{
		this.mem_pw = mem_pw;
	}
	public String getAdmin_cd()
	{
		return admin_cd;
	}
	public void setAdmin_cd(String admin_cd)
	{
		this.admin_cd = admin_cd;
	}
	public String getLogin_cck()
	{
		return login_cck;
	}
	public void setLogin_cck(String login_cck)
	{
		this.login_cck = login_cck;
	}
	public String getSession_id()
	{
		return session_id;
	}
	public void setSession_id(String session_id)
	{
		this.session_id = session_id;
	}
	public Date getLimit_date()
	{
		return limit_date;
	}
	public void setLimit_date(Date limit_date)
	{
		this.limit_date = limit_date;
	}
}