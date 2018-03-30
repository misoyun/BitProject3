package com.bit.mypage.vo;

import java.util.Date;

public class Board_VO {

	private int 	no;
	private String 	id;
	private String  content;
	private Date	time;
	private String 	hashTag;
	private	String  nickName;
	private String  picture_URL;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getHashTag() {
		return hashTag;
	}
	public void setHashTag(String hashTag) {
		this.hashTag = hashTag;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getPicture_URL() {
		return picture_URL;
	}
	public void setPicture_URL(String picture_URL) {
		this.picture_URL = picture_URL;
	}
	
	
	
	
}
