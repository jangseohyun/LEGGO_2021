package com.leggo.login;

import java.util.Date;

public class MemberAutoLoginDTO
{
	private String session_id;	//--세션 아이디
	private Date limit_date;	//--쿠키 지속 시간
	private String mem_id;		//--회원 아이디
	
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
	public String getMem_id()
	{
		return mem_id;
	}
	public void setMem_id(String mem_id)
	{
		this.mem_id = mem_id;
	}
}