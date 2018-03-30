package com.bit.mypage.interceptor;



import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.bit.mypage.service.User_Service;
import com.bit.mypage.vo.User_VO;

public class LogoutInterceptor extends HandlerInterceptorAdapter {

	@Inject
	User_Service userServ;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		
		
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		session.removeAttribute("pw");
		session.invalidate();

		response.sendRedirect(request.getContextPath() + "/user/login"); //Ȩ���� �̵�
		
		return false;
		
	}

}
