package com.leggo.profile;

public interface IProfileDAO
{
	// 내 프로필 조회
	public ProfileDTO ProfileSelect(String mem_id);
	
	// 프로필 수정용 조회
	public ProfileDTO ProfileSetting(String mem_id);
	
	// 프로필 수정(프로필 이미지)
	public void ProfileSettingImg(String mem_id, String mem_img);

	// 프로필 수정(별명)
	public void ProfileSettingNnm(String mem_id, String mem_nnm);

	// 프로필 수정(자기소개)
	public void ProfileSettingIntro(String mem_id, String mem_intro);
}
