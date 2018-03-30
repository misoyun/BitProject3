package com.bit.mypage.interceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.bit.mypage.service.User_Service;
import com.bit.mypage.vo.User_VO;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Inject
	User_Service userServ;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		User_VO vo = userServ.logincheck(id, pw);

		if(vo == null)
		{
			response.sendRedirect(request.getContextPath()+ "/user/loginfail");
			return false;
		}
	
		HttpSession session = request.getSession();
//		session.setAttribute("User", vo);
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		response.sendRedirect(request.getContextPath() + "/"); //Ȩ���� �̵�
		
		return false;
		
	}

}
