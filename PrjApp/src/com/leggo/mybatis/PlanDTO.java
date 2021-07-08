package com.leggo.mybatis;

public class PlanDTO
{
	//-- 주요 속성 구성
	private String pl_cd, mem_nnm, pl_tt, dt, pl_dt, pl_hits, blind;
	
	//-- getter / setter
	public String getPl_cd()
	{
		return pl_cd;
	}

	public void setPl_cd(String pl_cd)
	{
		this.pl_cd = pl_cd;
	}

	public String getMem_nnm()
	{
		return mem_nnm;
	}

	public void setMem_nnm(String mem_nnm)
	{
		this.mem_nnm = mem_nnm;
	}

	public String getPl_tt()
	{
		return pl_tt;
	}

	public void setPl_tt(String pl_tt)
	{
		this.pl_tt = pl_tt;
	}

	public String getDt()
	{
		return dt;
	}

	public void setDt(String dt)
	{
		this.dt = dt;
	}

	public String getPl_dt()
	{
		return pl_dt;
	}

	public void setPl_dt(String pl_dt)
	{
		this.pl_dt = pl_dt;
	}

	public String getPl_hits()
	{
		return pl_hits;
	}

	public void setPl_hits(String pl_hits)
	{
		this.pl_hits = pl_hits;
	}

	public String getBlind()
	{
		return blind;
	}

	public void setBlind(String blind)
	{
		this.blind = blind;
	}
	
	
}
