package com.leggo.mybatis;

public class TripDTO
{
	//-- 주요 속성 구성
	private String tr_cd, mem_nnm, tr_dt, tr_hits, blind;
	
	//-- getter / setter 구성
	public String getTr_cd()
	{
		return tr_cd;
	}

	public void setTr_cd(String tr_cd)
	{
		this.tr_cd = tr_cd;
	}

	public String getMem_nnm()
	{
		return mem_nnm;
	}

	public void setMem_nnm(String mem_nnm)
	{
		this.mem_nnm = mem_nnm;
	}

	public String getTr_dt()
	{
		return tr_dt;
	}

	public void setTr_dt(String tr_dt)
	{
		this.tr_dt = tr_dt;
	}

	public String getTr_hits()
	{
		return tr_hits;
	}

	public void setTr_hits(String tr_hits)
	{
		this.tr_hits = tr_hits;
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
