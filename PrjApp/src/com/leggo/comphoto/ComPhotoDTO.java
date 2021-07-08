/*===========================
   ComPhotoDTO.java
===========================*/

package com.leggo.comphoto;

public class ComPhotoDTO
{
	private String pp_cd;		// 사진 게시글 코드
	private String mem_cd;		// (작성자)회원 코드
	private String pp_nm;		// 사진 게시글 장소명
	private String pp_lat;		// 사진 게시글 위도
	private String pp_long;		// 사진 게시글 경도
	private String pp_count;	// 사진 게시글 내용
	private String pp_hits;		// 사진 게시글 조회수
	private String pp_dt;		// 사진 게시글 작성일시
	private String open_cd;		// 공개여부코드
	
	//추가-----------------------
	private int rowCount;
	
	// 시작 게시물 번호
	private int startRowNum;
	
	// 끝 게시물 번호
	private int endRowNum;

	public String getPp_cd()
	{
		return pp_cd;
	}

	public void setPp_cd(String pp_cd)
	{
		this.pp_cd = pp_cd;
	}

	public String getMem_cd()
	{
		return mem_cd;
	}

	public void setMem_cd(String mem_cd)
	{
		this.mem_cd = mem_cd;
	}

	public String getPp_nm()
	{
		return pp_nm;
	}

	public void setPp_nm(String pp_nm)
	{
		this.pp_nm = pp_nm;
	}

	public String getPp_lat()
	{
		return pp_lat;
	}

	public void setPp_lat(String pp_lat)
	{
		this.pp_lat = pp_lat;
	}

	public String getPp_long()
	{
		return pp_long;
	}

	public void setPp_long(String pp_long)
	{
		this.pp_long = pp_long;
	}

	public String getPp_count()
	{
		return pp_count;
	}

	public void setPp_count(String pp_count)
	{
		this.pp_count = pp_count;
	}

	public String getPp_hits()
	{
		return pp_hits;
	}

	public void setPp_hits(String pp_hits)
	{
		this.pp_hits = pp_hits;
	}

	public String getPp_dt()
	{
		return pp_dt;
	}

	public void setPp_dt(String pp_dt)
	{
		this.pp_dt = pp_dt;
	}

	public String getOpen_cd()
	{
		return open_cd;
	}

	public void setOpen_cd(String open_cd)
	{
		this.open_cd = open_cd;
	}

	public int getStartRowNum()
	{
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum)
	{
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum()
	{
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum)
	{
		this.endRowNum = endRowNum;
	}

	public int getRowCount()
	{
		return rowCount;
	}

	public void setRowCount(int rowCount)
	{
		this.rowCount = rowCount;
	}
	
	
	
}
