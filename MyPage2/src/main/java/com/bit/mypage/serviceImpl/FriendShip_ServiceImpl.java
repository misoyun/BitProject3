package com.bit.mypage.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bit.mypage.dao.FriendShip_DAO;
import com.bit.mypage.service.FriendShip_Service;
import com.bit.mypage.vo.FriendShip_VO;

@Service
public class FriendShip_ServiceImpl implements FriendShip_Service{

   @Inject
   FriendShip_DAO friendDAO;
   
   
   @Override
   public int addFriend(String myid, String friendid) {
      int temp = friendDAO.add(myid, friendid);
      return temp;
   }

   @Override
   public List<FriendShip_VO> viewFriend(String id) {
      // TODO Auto-generated method stub
      
      List<FriendShip_VO> list = friendDAO.view(id);
      return list;
   }
   
   @Override
   public boolean deleteFriend(String myid, String friendid) {
      // TODO Auto-generated method stub
      return friendDAO.delete(myid, friendid);
   }

}