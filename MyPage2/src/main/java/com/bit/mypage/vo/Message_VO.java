package com.bit.mypage.vo;

import java.sql.Timestamp;
import java.util.Date;

public class Message_VO {

	private int 		no_;
	private String  	id1;
	private String  	id2;
	private String  	content;
	private Date	time;

	
	
	public String getId1() {
		return id1;
	}
	public void setId1(String id1) {
		this.id1 = id1;
	}
	public String getId2() {
		return id2;
	}
	public void setId2(String id2) {
		this.id2 = id2;
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
	public int getNo_() {
		return no_;
	}
	public void setNo_(int no_) {
		this.no_ = no_;
	}
	
	
	
	
}
