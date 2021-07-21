package com.leggo.follow;

public class FollowDTO
{
	private String follower_mem_id;		//--팔로워 아이디
	private String follower_mem_img;	//--팔로워 프로필 사진
	
	public String getFollower_mem_id()
	{
		return follower_mem_id;
	}
	public void setFollower_mem_id(String follower_mem_id)
	{
		this.follower_mem_id = follower_mem_id;
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
