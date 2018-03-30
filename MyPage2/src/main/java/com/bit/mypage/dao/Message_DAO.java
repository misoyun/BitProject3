package com.bit.mypage.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.mypage.vo.Message_VO;

@Repository
public class Message_DAO 
{
	@Autowired
	SqlSession sqlSession;
	
	public List<Message_VO> selectList(String id)
	{
		if(sqlSession.selectList("msgList",id)!=null)
			return sqlSession.selectList("msgList",id);
		else 
		return null;
	}
	public int msginsert(Message_VO vo)
	{
		
		return sqlSession.insert("msginsert",vo);
	}
	public int msginsert1(Message_VO vo)
	{
		return sqlSession.insert("msginsert1",vo);
	}
	
	public int deleteMessage(int no)
	{
		return sqlSession.delete("msgDelete",no);
	}
}
