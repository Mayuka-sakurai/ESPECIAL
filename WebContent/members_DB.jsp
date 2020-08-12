<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.especial.MemberDAO.*" %>
<%@ page import="com.especial.MemberDTO.*" %>



<%

	Member_dao dao = new Member_dao();
	Member_dto dto = new Member_dto();
	
	dao.getinstance();
	
	// 변수에 내용 저장
	
	dto.setMember_gender(request.getParameter("gender"));
	
	String address_main = request.getParameter("address_main");
	String address_detail = request.getParameter("address_detail");
	dto.setMember_address(address_main + " " +address_detail);
	
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	dto.setMember_birth(month+" "+day);
	
	String mail_id = request.getParameter("mail_id");
	String mail_domain = request.getParameter("mail_domain");
	dto.setMember_email(mail_id + "@" + mail_domain);
	
	//두개 이상의 값을 받아 하나에 컬럼에 insert시 두개 합친 후 컬럼에 넣어줬다.
	String first_name = request.getParameter("first_name");
	String last_name = request.getParameter("last_name");
	dto.setMember_engName(first_name + " " + last_name);
		
	
	// 날짜 등록시, date()사용 -> SimpleDateFormat 사용하여 format 등록하여 변경
	Date today = new java.util.Date();
	SimpleDateFormat formatTime = new SimpleDateFormat("yyyy-MM-dd", Locale.KOREAN);
	String todayString = formatTime.format(today);
	dto.setMember_joindate(todayString);
	
	
	dto.setMember_id(request.getParameter("id"));
	dto.setMember_password(request.getParameter("pw"));
	
	dto.setMember_name(request.getParameter("name"));
		
	String tel_first = request.getParameter("tel_first");
	String tel_second = request.getParameter("tel_second");
	String tel_third = request.getParameter("tel_third");
	dto.setMember_tel(tel_first + " - " + tel_second + " - " + tel_third);
	
%>

<%-- 신규 회원 가입 처리 --%>

<%
	response.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	PrintWriter result = response.getWriter();
	
	boolean isNewMember = dao.joinmember(dto);
	
	if(isNewMember = true){
		
		
		
		response.sendRedirect("mainpage.html");
		
	} else {
		
		result.println("<script>");
		result.println("alert('죄송합니다! 다시한번 시도해주세요')");
		result.println("history.back();");
		result.println("</script");
				
	}
	 
		
%>

