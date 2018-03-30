package com.bit.mypage;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.mypage.serviceImpl.FriendShip_ServiceImpl;
import com.bit.mypage.vo.FriendShip_VO;

@Controller
@RequestMapping("/friend")
public class FriendShipController {

   @Inject
   FriendShip_ServiceImpl friendService;
   
   @RequestMapping("/view")
   public List<FriendShip_VO> view(HttpServletRequest request, Model model) {
   
      HttpSession session = request.getSession();
      String id = (String)session.getAttribute("id");
      //System.out.println("=======================================");
      //System.out.println(id);
      List<FriendShip_VO> list = friendService.viewFriend(id);   //session을 기준으로 id를 받아온다.
      
      return list;
   }
   @RequestMapping("/add")
   public String add(HttpServletRequest request, @RequestParam("input") String friendid,
                 Model model) {
      HttpSession session = request.getSession();
      String myid = (String)session.getAttribute("id");
      System.out.println(friendid);
      
      int isAdd = friendService.addFriend(myid, friendid);   //자기 아이디랑 친구 아이디를 넣는다.
      if(isAdd == 0) {
         model.addAttribute("msg", "친구 추가가 완료 되었습니다!!");
      }else if(isAdd == 1) {
         model.addAttribute("msg", "친구 추가를 실패하였습니다!!");
      }else if(isAdd == 2) {
         model.addAttribute("msg", "이미 추가되어 있는 친구입니다!!");
      }else {
         model.addAttribute("msg", "그런 아이디는 존재하지 않습니다!");
      }
      return "redirect:/";
   }
   @RequestMapping("/delete")   //본인아이디랑 친구 아이디를 가져온다
   public String delete(HttpServletRequest request, 
                   @RequestParam("deleteid_") String friendid, 
                   Model model) {
      HttpSession session = request.getSession();
      String myid = (String)session.getAttribute("id");
      
      System.out.println("==================================================");
      System.out.println(friendid);
      boolean isRemove = friendService.deleteFriend(myid, friendid);
      if(isRemove) {
         model.addAttribute("msg", "친구 삭제가 완료되었습니다..!");
      }else {
         model.addAttribute("msg", "친구 삭제가 실패하였습니다..!");      
      }
      return "redirect:/";
   }

}