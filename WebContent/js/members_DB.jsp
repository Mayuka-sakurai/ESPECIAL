<%@page import="com.sun.nio.zipfs.ZipDirectoryStream"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>




<%! 

	String name;
	String engname1;
	String engname2;
	String birth;
	String email;
	String zipcode;
	String address1;
	String address2;
	String address3;
	String id;
	String password;
	String joindate;
	String news;
	String gender;
	String tel1;
	String tel2;
	String tel3;
	
	

%>

<%
	request.setCharacterEncoding("UTF-8");

	gender = request.getParameter("gender");
	name = request.getParameter("name");
	engname1 = request.getParameter("first_name");
	engname2 = request.getParameter("last_name");
	birth = request.getParameter("month"+"day");
	email = request.getParameter("mail_id"+"@"+"mail_domain");

	tel1 = request.getParameter("tel_first");
	tel2 = request.getParameter("tel_second");
	tel3 = request.getParameter("tel_third");

	zipcode = request.getParameter("zipcode");

	address1 = request.getParameter("address_main");
	address2 = request.getParameter("address_detail");
	address3 = request.getParameter("address_extra");
	
	id = request.getParameter("id");
	password = request.getParameter("password");
	
	
	
	
	
%>
