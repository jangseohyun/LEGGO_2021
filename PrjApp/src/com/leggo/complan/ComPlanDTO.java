/*=============================
   ComPlanDTO.java
=============================*/

package com.leggo.complan;

public class ComPlanDTO
{
	private String mem_nnm, mem_img;								// 작성자 닉네임, 작성자 프로필사진
	private String pl_tt, pl_stt, pl_strt_dt, pl_end_dt, pl_img;	// 일정 제목, 일정 소제목, 여행시작일, 여행종료일, 배경사진
	private String pl_hits, pl_dt, pl_ppl, pl_bud;					// 조회수, 작성일지, 인원, 예산
	
	// getter / setter 구성
	public String getMem_nnm()
	{
		return mem_nnm;
	}
	public void setMem_nnm(String mem_nnm)
	{
		this.mem_nnm = mem_nnm;
	}
	public String getMem_img()
	{
		return mem_img;
	}
	public void setMem_img(String mem_img)
	{
		this.mem_img = mem_img;
	}
	public String getPl_tt()
	{
		return pl_tt;
	}
	public void setPl_tt(String pl_tt)
	{
		this.pl_tt = pl_tt;
	}
	public String getPl_stt()
	{
		return pl_stt;
	}
	public void setPl_stt(String pl_stt)
	{
		this.pl_stt = pl_stt;
	}
	public String getPl_strt_dt()
	{
		return pl_strt_dt;
	}
	public void setPl_strt_dt(String pl_strt_dt)
	{
		this.pl_strt_dt = pl_strt_dt;
	}
	public String getPl_end_dt()
	{
		return pl_end_dt;
	}
	public void setPl_end_dt(String pl_end_dt)
	{
		this.pl_end_dt = pl_end_dt;
	}
	public String getPl_img()
	{
		return pl_img;
	}
	public void setPl_img(String pl_img)
	{
		this.pl_img = pl_img;
	}
	public String getPl_hits()
	{
		return pl_hits;
	}
	public void setPl_hits(String pl_hits)
	{
		this.pl_hits = pl_hits;
	}
	public String getPl_dt()
	{
		return pl_dt;
	}
	public void setPl_dt(String pl_dt)
	{
		this.pl_dt = pl_dt;
	}
	public String getPl_ppl()
	{
		return pl_ppl;
	}
	public void setPl_ppl(String pl_ppl)
	{
		this.pl_ppl = pl_ppl;
	}
	public String getPl_bud()
	{
		return pl_bud;
	}
	public void setPl_bud(String pl_bud)
	{
		this.pl_bud = pl_bud;
	}
}
