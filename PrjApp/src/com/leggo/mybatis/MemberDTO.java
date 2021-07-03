package com.leggo.mybatis;

public class MemberDTO
{
	private String mem_cd, acct_st, mem_dt_cd, mem_id, mem_nnm, mem_join_dt, admin_cd, qt_mem_quit_dt, num;
	//-- 회원코드, 회원계정상태, 회원데이터코드, 회원아이디, 가입일, 관리자코드, 탈퇴일
	
	// getter / setter 구성
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

	public String getMem_dt_cd()
	{
		return mem_dt_cd;
	}

	public void setMem_dt_cd(String mem_dt_cd)
	{
		this.mem_dt_cd = mem_dt_cd;
	}

	public String getMem_id()
	{
		return mem_id;
	}

	public void setMem_id(String mem_id)
	{
		this.mem_id = mem_id;
	}

	public String getMem_nnm()
	{
		return mem_nnm;
	}

	public void setMem_nnm(String mem_nnm)
	{
		this.mem_nnm = mem_nnm;
	}

	public String getMem_join_dt()
	{
		return mem_join_dt;
	}

	public void setMem_join_dt(String mem_join_dt)
	{
		this.mem_join_dt = mem_join_dt;
	}

	public String getAdmin_cd()
	{
		return admin_cd;
	}

	public void setAdmin_cd(String admin_cd)
	{
		this.admin_cd = admin_cd;
	}

	public String getQt_mem_quit_dt()
	{
		return qt_mem_quit_dt;
	}

	public void setQt_mem_quit_dt(String qt_mem_quit_dt)
	{
		this.qt_mem_quit_dt = qt_mem_quit_dt;
	}

	public String getNum()
	{
		return num;
	}

	public void setNum(String num)
	{
		this.num = num;
	}
	
	
}
