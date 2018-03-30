package com.bit.mypage.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.bit.mypage.vo.FriendShip_VO;
import com.bit.mypage.vo.User_VO;

@Repository
public class FriendShip_DAO {

   @Autowired
   SqlSession sqlsession;
   public int add(String myid, String friendid) {
      
      if(check_id(friendid)) {
         if(is_added(myid, friendid) == false) {
            FriendShip_VO vo = new FriendShip_VO();
            vo.setId(myid);
            vo.setFriend(friendid);
            
            int temp = sqlsession.insert("addFriend", vo);
            
            if(temp >= 1) return 0;   //성공?
            
            else return 1;//실패 (오류)
         }else {
            return 2;    //이미 친구가 추가되어있는경우
         }      
      }
      
      return 3;//그런 아이디가 없는 경우
      
   }
   public boolean is_added(String myid, String friendid) {
      FriendShip_VO vo = new FriendShip_VO();
      
      vo.setId(myid);
      vo.setFriend(friendid);
      
      int temp = sqlsession.selectOne("isonthefriend", vo);
      
      if(temp >= 1) return true;      //이미 친구가 추가되어있다면
      
      return false;
   }
   //삭제
   public boolean delete(String myid, String friendid) {
      FriendShip_VO vo = new FriendShip_VO();
      
      vo.setId(myid);
      vo.setFriend(friendid);
      int temp = sqlsession.delete("deleteFriend", vo);
      
      if(temp >= 1 ) return true;
      else return false;
   }
   public List<FriendShip_VO> view(String id){
      FriendShip_VO vo = new FriendShip_VO();
      vo.setId(id);
      List<FriendShip_VO> list = sqlsession.selectList("selectFriend", vo);
      //해당 id에 해당하는 친구들의 목록을 가져옴.
      //System.out.println(list.get(0).toString());
      return list;
      
   }
   public boolean check_id(String id) {
      
      int temp = sqlsession.selectOne("findFriend", id);
      if(temp >= 1) {
         return true;
      }else {
         return false;
      }
   }
}