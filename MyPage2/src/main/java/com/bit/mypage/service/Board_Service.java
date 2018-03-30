package com.bit.mypage.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bit.mypage.vo.Board_VO;

@Service
public interface Board_Service {

	public boolean write(Board_VO vo);
	public boolean delete(int no);
	public boolean update(Board_VO vo);
	public List<Board_VO> updateform(int no);
	public List<Board_VO> boardList(String id);
	public List<Board_VO> findList(Board_VO vo);
	
	
}
