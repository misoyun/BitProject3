package com.bit.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.mypage.vo.User_VO;

@Repository
public class User_DAO {

	@Autowired
	SqlSession sqlSession;
	
	public int insert(User_VO vo) 
	{
		vo.setRankPoint(10000);
		boolean temp = idcheck(vo);
		if(temp == true)
			return sqlSession.insert("joinUser", vo);
		else
			return 0;
	}
	
	public boolean logincheck(String id, String pw) {

		String realPw = sqlSession.selectOne("getPassword", id);
		if(realPw.equals(pw))
			return true;
		else
			return false;
	}
	
	public boolean idcheck(User_VO vo) {
		String id = vo.getId();
		int temp = sqlSession.selectOne("checkId", id);
		if(temp >= 1) return false;
		else {
			return true;
		}
	}
	public int update(User_VO vo)
	{
		return sqlSession.update("updateUser", vo);
	}

	public int delete(User_VO vo)
	{
		return sqlSession.delete("deleteUser", vo);
	}


	public void updateProfile(Map param)
	{
		sqlSession.insert("updateProfile", param);
	}
	
	/*public int searchFriend(String id)
	{
		return sqlSession.select("searchFriend", id);
	}

	public int showFriends(String id)
	{
		return sqlSession.selectList("showFriends", id);
	}
*/	
	
}
