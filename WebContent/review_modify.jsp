<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.especial.VO.BoardBean"%>


<%
ArrayList<BoardBean> article = (ArrayList<BoardBean>) request.getAttribute("article");

String nowPage = (String) request.getParameter("page");
System.out.println("modify-nowpage : " + nowPage);
System.out.println("modify-디테일페이지수정부분" + article);
System.out.println("modify-디테일페이지수정부분" + article.get(0).getRoom_review_no());
System.out.println("articleq1111111111111111111111111"+article.get(0).getRoom_review_no());

%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>:: Review ::</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet" />

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/reviewedit.css" type="text/css" />
</head>

<body>
	<div class="form-size">
		<div class="title">
			<br /> <br /> <br /> <br /> <span id="main-title"
				style="margin-top: 100px">Thanks to your Reviews!</span> <br /> <span
				id="sub-title">We Always Waiting Your Reviews</span>
		</div>
		<form action="room_modifypro.room" method="post" name="modifyForm"
			id="modifyForm" enctype="multipart/form-data">

			<input type="text" id="room_review_no" name="room_review_no"
				value="<%=article.get(0).getRoom_review_no()%>" />

			<hr />
			<br />
			<table>
				<tr>
					<td><%=session.getAttribute("id") %></td>
				</tr>
				<tr>
					<td><select name="category" id="category">
							<optgroup label="ESPECIAL ROOMS">
								<option value="president">President Room</option>
								<option value="suite">Suite Room</option>
								<option value="double">Residence Double</option>
								<option value="single">Residence Single</option>
								<option value="family">Family Room</option>
							</optgroup>

							<optgroup label="WEDDING & CONFERENCE">
								<option value="wedding">Wedding</option>
								<option value="Conference">Conference Hall</option>
							</optgroup>
					</select></td>
					<td><input type="text" size="400"
						placeholder="&nbsp;&nbsp;title" name="texttitle" id="editor"
						required="required"
						value="<%=article.get(0).getRoom_review_title()%>" /></td>
				</tr>
			</table>
			<br />

			<hr />
			<br />
			<textarea name="content" id="editor" placeholder="Write here"
				required="required" cols="131" rows="30"
				value="<%=article.get(0).getRoom_review_contents() %>">
        </textarea>
			<br /> <input type="file" name="userfile" id="userifile">
			<div id="btns">
				<br /> <a href="javascript:modifyboard()"> <input type="button"
					value="submit" class="btn btn-danger btn btn-primary btn-lg"
					id="submit-btn" /> &nbsp;&nbsp;&nbsp;
				</a> <a href="javascript:history.go(-1)"> <input type="reset"
					value="reset" class="btn btn-default btn btn-primary btn-lg"
					id="reset-btn" />
				</a>
			</div>
		</form>
	</div>
</body>

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
<script type="text/javascript">
function modifyboard(){
	modifyForm.submit();
}
</script>

</html>
