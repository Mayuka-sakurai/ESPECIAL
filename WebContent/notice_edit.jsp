<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");


	System.out.println("header id :" +id);
	
%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>::ESPECIAL::</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet" />

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/reviewedit.css" type="text/css" />
</head>

<body>

	<!-- Header Section Begin -->
	<%@include file="header.jsp"%>
	<!-- Header End -->

	<!-- Hero Area Section Begin -->
	<div class="hero-area set-bg other-page" data-setbg=""
		style="background-color: transparent"></div>
	<!-- Hero Area Section End -->

	<!-- Review Edit Section Begin -->

	<div class="form-size">
		<div class="title">
			<br /> <br /> <br /> <br /> <span id="main-title"
				style="margin-top: 100px">Notice</span> <br /> <span id="sub-title">Notice
				/ News / Promotions</span>
		</div>
		<form action="notice_insert.nt" method="post" name="noticeForm"
			enctype="multipart/form-data">
			<hr />
			<br />
			<table>
				<tr>
					<td><%=session.getAttribute("id") %></td>
				</tr>
				<tr>
					<td><select name="category" id="category">

							<option value="notice">NOTICE</option>
							<option value="news">NEWS</option>
							<option value="promotions">PROMOTIONS</option>

					</select></td>
					<td><input type="text" size="400"
						placeholder="&nbsp;&nbsp;title" name="title" id="title"
						required="required" /></td>
				</tr>
			</table>
			<br />

			<hr />
			<br />
			<textarea name="contents" id="editor" placeholder="notice here"
				required="required">
        	</textarea>
			<br /> <input type="file" name="userfile" id="userifile">
			<div id="btns">
				<br /> <input type="submit" value="Submit"
					class="btn btn-danger btn btn-primary btn-lg" id="submit-btn" />
				&nbsp;&nbsp;&nbsp; <input type="reset" value="reset"
					class="btn btn-default btn btn-primary btn-lg" id="reset-btn" /> <a
					href="javascript:history.go(-1)"> <input type="button"
					value="back" class="btn btn-default btn btn-primary btn-lg"
					id="back-btn" />
				</a>
			</div>
		</form>
	</div>
	<!-- Review Edit Section End -->

	<!-- Footer Section Begin -->
	<%@include file="footer.jsp"%>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script
		src="https://cdn.ckeditor.com/ckeditor5/20.0.0/classic/ckeditor.js "></script>
	<script src="textedit.js"></script>
</body>
<!-- Texteditor  Script 
<script>
    ClassicEditor.create(document.querySelector("#editor")).catch((error) => {
      console.error(error);
    });
</script>-->
</html>
