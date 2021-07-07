package com.leggo.mybatis;

import java.util.ArrayList;

public interface IReportDAO
{
	// 신고 리스트 
	public ArrayList<ReportDTO> list();
	
	// 신고 총 수 
	public int totCount();
	
	// 당일 신고 건 수 
	public int count();
}