package com.leggo.mybatis;

public class ReportDTO
{
	String rpt_cd, rsn, mem_nnm, dt, st;		//-- 코드, 사유, 회원코드, 신고일, 상태

	public String getRpt_cd()
	{
		return rpt_cd;
	}

	public void setRpt_cd(String rpt_cd)
	{
		this.rpt_cd = rpt_cd;
	}

	public String getRsn()
	{
		return rsn;
	}

	public void setRsn(String rsn)
	{
		this.rsn = rsn;
	}

	public String getMem_nnm()
	{
		return mem_nnm;
	}

	public void setMem_nnm(String mem_nnm)
	{
		this.mem_nnm = mem_nnm;
	}

	public String getDt()
	{
		return dt;
	}

	public void setDt(String dt)
	{
		this.dt = dt;
	}

	public String getSt()
	{
		return st;
	}

	public void setSt(String st)
	{
		this.st = st;
	}
	
	
}
