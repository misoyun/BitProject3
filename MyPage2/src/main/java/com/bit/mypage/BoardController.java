package com.bit.mypage;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bit.mypage.service.Board_Service;
import com.bit.mypage.vo.Board_VO;

@Controller
public class BoardController {


	@Inject
	Board_Service boardServ;
	
	@RequestMapping(value="/board/writeform", method = RequestMethod.GET)
	public String writeBoard()
	{
		return "writeform";
		
	}
	
	@RequestMapping(value="/board/write", method = RequestMethod.POST)
	public String write(@ModelAttribute Board_VO vo)
	{
		boolean temp = boardServ.write(vo);
		return "redirect:/";
		
	}

	@RequestMapping(value="/board/list", method = RequestMethod.GET)
	public List<Board_VO> getBoardList(HttpSession session)
	{
		String id = (String)session.getAttribute("id");
		List<Board_VO> list = boardServ.boardList(id);
		
		return list;
		
	}
	
	@RequestMapping(value="/board/updateform", method=RequestMethod.POST)
	public ModelAndView updateform(@RequestParam("updateboard") String no)
	{
		List<Board_VO> list = boardServ.updateform(Integer.parseInt(no));
		ModelAndView mav = new ModelAndView("updateform");
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping(value="/board/update", method = RequestMethod.POST)
	public String update(@ModelAttribute Board_VO vo)
	{
		boardServ.update(vo);
		return "home";
	}
	
	@RequestMapping(value="/board/delete", method=RequestMethod.GET)
	public String delete(@RequestParam("deleteboardid") String list_no){

		System.out.println(list_no);
		boardServ.delete(Integer.parseInt(list_no));
		return "redirect:/";
		
	}
	
	@RequestMapping(value="/board/find", method=RequestMethod.POST)
	  public String find(@ModelAttribute Board_VO vo,Model model,HttpServletRequest request)
	   {
		   String find=vo.getHashTag();
		   System.out.println("find : "+find);
		   HttpSession session = request.getSession();
		   session.setAttribute("find", find);
		   List<Board_VO> list = boardServ.findList(vo);
		   model.addAttribute("list",list);
		   return "findform";
		   	
	   }
	
	
}
