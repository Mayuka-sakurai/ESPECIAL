<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="com.especial.VO.BoardBean"%>
<% 
	
	String nowPage = (String)request.getAttribute("page");
	
	int room_review_no = (Integer)request.getAttribute("room_review_no");
 %>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>:: Delete Review ::</title>
</head>
<body>
	<section id="deletepage">

		<section name="header">
			<%@include file="header.html" %>
		</section>
		<section class="content">

			<form name="deleteReview"
				action="room_deletePro.room?room_review_no=<%=room_review_no %>"
				method="post">
				<input type="hidden" name="page" value="<%=nowPage %>" />
				<div class="question_Delete">
					<div>
						<span>
							<h1>삭제할건가요?</h1>
						</span>
					</div>
					<div>
						<span> <input type="submit" value="삭제" />
							&nbsp;&nbsp;&nbsp;&nbsp;
						</span> <span> <input type="button" value="취소"
							onClick="javascript:history.go(-1)" />
						</span>
					</div>
					<br />
					<hr />
				</div>


			</form>
	<%@include file="footer.jsp" %>

		</section>
	</section>
</body>
</html>
