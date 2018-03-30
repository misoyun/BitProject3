package com.bit.mypage;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.mypage.service.User_Service;
import com.bit.mypage.vo.User_VO;

@Controller
@RequestMapping("/user")
public class UserController {

	@Inject
	User_Service userServ;

	
	//로그인페이지
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login()
	{
		return "login";
	}
	
	//회원가입페이지
	@RequestMapping(value="/joinform", method = RequestMethod.GET)
	public String insertform()
	{
		return "joinform";
	}

	//회원가입 - DB에 회원정보 입력후 로그인 페이지로 넘어가기
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String insert(@ModelAttribute User_VO vo)
	{
	   boolean temp = userServ.join(vo);	
		if(temp == true)
			return "login";
		else
			return "joinfail";
	}
	
	//아이디와 비밀번호 확인
	@RequestMapping(value = "/logincheck", method = RequestMethod.POST)
	public String loginCheck(@ModelAttribute User_VO vo, HttpSession session, Model model) {
	
		return "home";
		
	}
	
	//로그인 실패
	@RequestMapping(value = "/loginfail")
	public String loginfail()
	{
		return "loginfail";
	}

	@RequestMapping(value = "/profile")
	public String profile()
	{
		return "profile";
	}
	
	//logout
	@RequestMapping(value="/logout")
	public String logout(HttpSession session)
	{
		return "redirect:login";
		
	}
	
	@RequestMapping(value="/gotoprofile")
	public String goToProfile()
	{
		return "profileUpdate";
	}
	
	
	//profile photo upload
	@RequestMapping(value="/updateprofile")
	public ModelAndView updateProfile(HttpServletRequest request)
	{
		
		Map param = new HashMap();
		
		param.put("id", request.getParameter("id"));
		param.put("intro", request.getParameter("intro"));
//		param.put("imgsrc", request.getParameter("imgsrc"));
		
		userServ.updateProfile(param);
	
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}

	
}
