package com.leggo.qna;


public interface IQnaDAO
{
	// 일대일문의 작성
	public int SendQna(QnaDTO dto);
	  
	// 작성한 일대일문의 조회
	public QnaDTO QnaList(String mem_id);
}
