package com.leggo.mybatis;

public class PhotoDTO
{
	//-- 주요 속성 구성
	private String pp_cd, mem_nnm, pp_dt, pp_hits, rpt_st_count;
	
	//--  getter / setter 구성
	public String getPp_cd()
	{
		return pp_cd;
	}

	public void setPp_cd(String pp_cd)
	{
		this.pp_cd = pp_cd;
	}

	public String getMem_nnm()
	{
		return mem_nnm;
	}

	public void setMem_nnm(String mem_nnm)
	{
		this.mem_nnm = mem_nnm;
	}

	public String getPp_dt()
	{
		return pp_dt;
	}

	public void setPp_dt(String pp_dt)
	{
		this.pp_dt = pp_dt;
	}

	public String getPp_hits()
	{
		return pp_hits;
	}

	public void setPp_hits(String pp_hits)
	{
		this.pp_hits = pp_hits;
	}

	public String getRpt_st_count()
	{
		return rpt_st_count;
	}

	public void setRpt_st_count(String rpt_st_count)
	{
		this.rpt_st_count = rpt_st_count;
	}
	
	
}
