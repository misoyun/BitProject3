package com.bit.mypage.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.bit.mypage.vo.Message_VO;
import com.bit.mypage.vo.User_VO;

@Service
public interface Message_Service 
{
	List<Message_VO>selectMessage(String id);
	int msgDelete(int no);
	int msginsert(Message_VO vo);
	int msginsert1(Message_VO vo);
}
