<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.mysql.fabric.Response"%>
<%@page import="jdk.nashorn.internal.ir.RuntimeNode.Request"%>
<%@page import="org.apache.ibatis.session.*"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactoryBuilder"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<%@page import="com.especial.MemberDAO.*" %>
<%@page import="com.especial.MemberDTO.*" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN AUTH</title>
</head>
<body>


	<%
	Member_dao dao = new Member_dao();
	Member_dto dto = new Member_dto();
	dao.getinstance();
	
	
	String inputid = request.getParameter("id");
	String inputpw = request.getParameter("pw");
	String dbid = null;
	String dbpw = null;

	List<Member_dto> result = dao.logincheck(inputid);


	// 가져온 값 변수에 세팅

	dbid = result.get(0).getMember_id();
	dbpw = result.get(0).getMember_password();


	// database값과 같은지 확인하기

	if (dbid.equals(inputid)) {
		if (inputpw.equals(dbpw)) {
			session.setAttribute("id", dbid);
			session.setAttribute("pw", dbpw);
	
			response.sendRedirect("mainpage.jsp");
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter noticelist = response.getWriter();
			noticelist.println("<script>");
			noticelist.println("alert('아이디와 비밀번호를 확인 해주세요!');");
			noticelist.println("history.back();");
			noticelist.println("</script>");
		}

	}
	
%>



</body>
</html>