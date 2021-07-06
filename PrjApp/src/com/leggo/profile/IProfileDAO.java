package com.leggo.profile;

public interface IProfileDAO
{
	// 내 프로필 조회
	public ProfileDTO ProfileSelect(String mem_id);
}
