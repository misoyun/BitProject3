package com.bit.mypage;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.mypage.service.Message_Service;
import com.bit.mypage.vo.Message_VO;
import com.bit.mypage.vo.User_VO;



@Controller
@RequestMapping("/message")
public class Message_Controller 
{
	
	@Inject
	Message_Service messageServ;
	
	@RequestMapping(value = "/messageform", method = RequestMethod.GET)
	public String messageform(HttpServletRequest request, String id,Model model)
	{
		HttpSession session = request.getSession();
		id=(String)session.getAttribute("id");
		List<Message_VO>list= messageServ.selectMessage(id);
		if(list!=null) {
		model.addAttribute("list",list);
		return "messageform";
		}
		else
			return "redirect:/";
	}
	@RequestMapping(value="/delete/{no}", method=RequestMethod.GET)
	public String msgDelete(@PathVariable ("no") Long no)
	{
		System.out.println("삭제번호 : "+no);
		
		messageServ.msgDelete(Integer.parseInt(no.toString()));
		return "redirect:/message/messageform";
	}
	@RequestMapping("/msginsertform/{id2}")
	public String msginsertform(@PathVariable("id2") String id2,Model model)
	{
		model.addAttribute("id2", id2);
		return "msginsertform";
	}
	@RequestMapping("/insert")
	public String msginsert(@ModelAttribute Message_VO vo)
	{

		messageServ.msginsert1(vo);
		return "redirect:/message/messageform";
	}
	
}
