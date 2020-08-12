package com.especial.VO;
import java.sql.Date;
public class BoardBean {
	
	private int room_review_no;
	private String room_review_category;
	private String room_review_title;
	private String room_review_contents;
	private String member_id;
	private String member_password;

	private String room_review_file;
	private int BOARD_RE_REF;
	private int BOARD_RE_LEV;
	private int BOARD_RE_SEQ;
	private int BOARD_READCOUNT;
	private Date room_review_date;
	
	
	
	public int getRoom_review_no() {
		return room_review_no;
	}
	public void setRoom_review_no(int room_review_no) {
		this.room_review_no = room_review_no;
	}
	public String getRoom_review_category() {
		return room_review_category;
	}
	public void setRoom_review_category(String room_review_category) {
		this.room_review_category = room_review_category;
	}
	public String getRoom_review_title() {
		return room_review_title;
	}
	public void setRoom_review_title(String room_review_title) {
		this.room_review_title = room_review_title;
	}
	public String getRoom_review_contents() {
		return room_review_contents;
	}
	public void setRoom_review_contents(String room_review_contents) {
		this.room_review_contents = room_review_contents;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	
	public String getRoom_review_file() {
		return room_review_file;
	}
	public void setRoom_review_file(String room_review_file) {
		this.room_review_file = room_review_file;
	}
	public int getBOARD_RE_REF() {
		return BOARD_RE_REF;
	}
	public void setBOARD_RE_REF(int bOARD_RE_REF) {
		BOARD_RE_REF = bOARD_RE_REF;
	}
	public int getBOARD_RE_LEV() {
		return BOARD_RE_LEV;
	}
	public void setBOARD_RE_LEV(int bOARD_RE_LEV) {
		BOARD_RE_LEV = bOARD_RE_LEV;
	}
	public int getBOARD_RE_SEQ() {
		return BOARD_RE_SEQ;
	}
	public void setBOARD_RE_SEQ(int bOARD_RE_SEQ) {
		BOARD_RE_SEQ = bOARD_RE_SEQ;
	}
	public int getBOARD_READCOUNT() {
		return BOARD_READCOUNT;
	}
	public void setBOARD_READCOUNT(int bOARD_READCOUNT) {
		BOARD_READCOUNT = bOARD_READCOUNT;
	}
	public Date getRoom_review_date() {
		return room_review_date;
	}
	public void setRoom_review_date(Date room_review_date) {
		this.room_review_date = room_review_date;
	}
	
	
	
	
	
	
	
	
}