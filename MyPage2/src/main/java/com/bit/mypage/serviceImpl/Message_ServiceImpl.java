package com.bit.mypage.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.mypage.dao.Message_DAO;
import com.bit.mypage.service.Message_Service;
import com.bit.mypage.vo.Message_VO;

@Service
public class Message_ServiceImpl implements Message_Service 
{

	@Autowired
	Message_DAO messageDao;
	
	@Override
	public List<Message_VO> selectMessage(String id) 
	{
		
		return messageDao.selectList(id);
	}

	@Override
	public int msgDelete(int no) 
	{
		
		return messageDao.deleteMessage(no);
	}

	@Override
	public int msginsert(Message_VO vo) 
	{
		
		
		return messageDao.msginsert(vo);
	}

	@Override
	public int msginsert1(Message_VO vo) {
		
		return  messageDao.msginsert1(vo);
	}

	

}
