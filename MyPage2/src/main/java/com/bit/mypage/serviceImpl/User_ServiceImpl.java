package com.bit.mypage.serviceImpl;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.mypage.dao.User_DAO;
import com.bit.mypage.service.User_Service;
import com.bit.mypage.vo.User_VO;

@Service
public class User_ServiceImpl implements User_Service {

	@Inject
	User_DAO userDao;

	@Override
	public boolean join(User_VO vo) {
		System.out.println("서비스도 실행됬음");
		int resultCount = userDao.insert(vo);
		if(resultCount == 1)
			return true;
		else
			return false;
	}

	@Override
	public User_VO logincheck(String id, String pw) {
		if(userDao.logincheck(id, pw))
		{
			User_VO vo = new User_VO();
			vo.setId(id);
			vo.setPw(pw);
			return vo;
		}
		else
			return null;
	}
	
	
	@Override
	public boolean idcheck(User_VO vo) {
		return userDao.idcheck(vo);
	}

	@Override
	public boolean logout() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void updateProfile(Map param) {
		// TODO Auto-generated method stub
		userDao.updateProfile(param);
	}

		
}
