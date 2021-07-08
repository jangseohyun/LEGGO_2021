/*========================
   ComTripFeedDTO.java
========================*/

package com.leggo.comtrip;

public class ComTripDTO
{
	private String mem_nnm, mem_img, tr_tt;					// 작성자 아이디, 작성자 프로필사진, 여행기 제목
	private String tr_cont, tr_per, tr_ppl, tr_bud;			// 여행기 내용, 기간, 인원, 예산
	private String mem_thum_url, tr_hits, tr_dt; 			// 대표사진, 조회수, 작성일, 스크랩수...
	
	
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
	public String getTr_tt()
	{
		return tr_tt;
	}
	public void setTr_tt(String tr_tt)
	{
		this.tr_tt = tr_tt;
	}
	public String getMem_thum_url()
	{
		return mem_thum_url;
	}
	public void setMem_thum_url(String mem_thum_url)
	{
		this.mem_thum_url = mem_thum_url;
	}
	public String getTr_hits()
	{
		return tr_hits;
	}
	public void setTr_hits(String tr_hits)
	{
		this.tr_hits = tr_hits;
	}
	public String getTr_cont()
	{
		return tr_cont;
	}
	public void setTr_cont(String tr_cont)
	{
		this.tr_cont = tr_cont;
	}
	public String getTr_per()
	{
		return tr_per;
	}
	public void setTr_per(String tr_per)
	{
		this.tr_per = tr_per;
	}
	public String getTr_ppl()
	{
		return tr_ppl;
	}
	public void setTr_ppl(String tr_ppl)
	{
		this.tr_ppl = tr_ppl;
	}
	public String getTr_bud()
	{
		return tr_bud;
	}
	public void setTr_bud(String tr_bud)
	{
		this.tr_bud = tr_bud;
	}
	public String getTr_dt()
	{
		return tr_dt;
	}
	public void setTr_dt(String tr_dt)
	{
		this.tr_dt = tr_dt;
	}

	
	
}
