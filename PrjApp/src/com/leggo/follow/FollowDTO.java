package com.leggo.follow;

public class FollowDTO
{
	private String follower_mem_nnm;	//--팔로워 별명
	private String follower_mem_img;	//--팔로워 프로필 사진
	
	public String getFollower_mem_nnm()
	{
		return follower_mem_nnm;
	}
	public void setFollower_mem_nnm(String follower_mem_nnm)
	{
		this.follower_mem_nnm = follower_mem_nnm;
	}
	public String getFollower_mem_img()
	{
		return follower_mem_img;
	}
	public void setFollower_mem_img(String follower_mem_img)
	{
		this.follower_mem_img = follower_mem_img;
	}
}
