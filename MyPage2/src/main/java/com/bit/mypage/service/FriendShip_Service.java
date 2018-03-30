package com.bit.mypage.service;

import java.util.List;

import com.bit.mypage.vo.FriendShip_VO;

public interface FriendShip_Service {

   //친구 추가
   public int addFriend(String id, String id2);
   public List<FriendShip_VO> viewFriend(String id);    //해당 id의 친구 목록을 불러옴
   public boolean deleteFriend(String id, String id2);

} 