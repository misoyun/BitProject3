package com.bit.mypage.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.mypage.dao.Board_DAO;
import com.bit.mypage.service.Board_Service;
import com.bit.mypage.vo.Board_VO;

@Service
public class Board_ServiceImpl implements Board_Service {

	@Inject
	Board_DAO boardDao;
	
	@Override
	public boolean write(Board_VO vo) {
		int resultCount = boardDao.write(vo);
	
		if(resultCount == 1)
			return true;
		else
			return false;
	}

	@Override
	public boolean delete(int no) {
		int resultCount = boardDao.delete(no);
		if(resultCount == 1)
			return true;
		else
			return false;

	}

	@Override
	public boolean update(Board_VO vo) {
		int resultCount = boardDao.update(vo);
		
		if(resultCount == 1)
			return true;
		else
			return false;
	}
	
	

	@Override
	public List<Board_VO> updateform(int no) {
		
		return boardDao.updateform(no);
	}

	@Override
	public List<Board_VO> boardList(String id) {

		return boardDao.boardList(id);
	}
	@Override
	   public List<Board_VO> findList(Board_VO vo) {
		 
		   return boardDao.findList(vo);
	   }



}
