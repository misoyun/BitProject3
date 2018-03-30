package com.bit.mypage;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.mypage.vo.Board_VO;
import com.bit.mypage.vo.FriendShip_VO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
   
   @Inject
   BoardController bc;
   
   @Inject
   FriendShipController fc;
   
   private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
   
   /**
    * Simply selects the home view to render by returning its name.
    */
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(HttpServletRequest request, Model model) {
	  HttpSession session = request.getSession();
	  
      List<Board_VO> bor_list = bc.getBoardList(session);
      List<FriendShip_VO> fri_list = fc.view(request, model);
      
      System.out.println(fri_list.toString());
      model.addAttribute("list", bor_list);
      model.addAttribute("friendVAL", fri_list);
      
      return "home";
   }

}