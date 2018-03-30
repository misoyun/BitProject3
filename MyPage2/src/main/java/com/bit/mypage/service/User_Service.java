package com.bit.mypage.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.bit.mypage.vo.User_VO;

@Service
public interface User_Service {
	
	public boolean join(User_VO vo);
	public User_VO logincheck(String id, String pw);
	public boolean idcheck(User_VO vo);
	public boolean logout();
	public void updateProfile(Map param);
	
	
}
