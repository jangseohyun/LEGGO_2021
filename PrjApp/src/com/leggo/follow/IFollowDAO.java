package com.leggo.follow;

public interface IFollowDAO
{
	// 팔로워 목록 조회
	public FollowDTO FollowerSelect(String mem_id);
	
	// 팔로잉 목록 조회
	public FollowDTO FollowingSelect(String mem_id);
	
	// 팔로잉 유저 작성 게시글 조회
	public FollowPostDTO FollowingPost(String mem_id);
}
