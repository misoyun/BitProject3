package com.bit.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.mypage.vo.Board_VO;

@Repository
public class Board_DAO {

	@Autowired
	SqlSession sqlSession;

	public int write(Board_VO vo)
	{
		return sqlSession.insert("writePost", vo);
		
	}

	public int delete(int no) 
	{
		return sqlSession.delete("deletePost", no);
	}

	public List<Board_VO> boardList(String id)
	{
		return sqlSession.selectList("boardList", id);
	}
	
	public int update(Board_VO vo)
	{
		return sqlSession.update("updatePost", vo);
		
	}
	
	public List<Board_VO> updateform(int no)
	{
		return sqlSession.selectList("updatePostForm", no);
		
	}
	public List<Board_VO> findList(Board_VO vo)
	   {
		   
	      return sqlSession.selectList("findList", vo);
	   }
	
	
}
