<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.especial.VO.BoardBean"%>


<%
	ArrayList<BoardBean> article = (ArrayList<BoardBean>) request.getAttribute("article");

String nowPage = (String) request.getParameter("page");
System.out.println("modify-nowpage : " + nowPage);
System.out.println("modify-디테일페이지내용" + article);
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

<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="css/board.css" type="text/css" />
</head>
<body>
	<header>
		<div>
			<h1>header넣어주세요</h1>
		</div>
	</header>
	<hr class="bold_hr" />
	<article>
		<form action="boarModify" method="post" name="modifyForm" id="modifyForm">
			<input type="hidden" name="room_review_no"
				value="<%=article.get(0).getRoom_review_no()%>" />
			<section id="review_part">
				<div>
					<div id="room_review">Visitor Review</div>
					<div id="room_category">Category</div>
					<hr class="border_bold" />

				</div>
				<div id="titlepart">
					<div id="titlepart" name="room_review_title" id="room_review_title"><%=article.get(0).getRoom_review_title()%></div>
					<div id="readcount" name="room_review_readcount"
						id="room_review_readCount">
						Hit
						<%=article.get(0).getBOARD_READCOUNT()%></div>
				</div>
				<hr />
				<div id="textutil">
					<div id="userid" name="userid"><%=article.get(0).getMember_id()%></div>
					<div id="update_date" name="update_date"><%=article.get(0).getRoom_review_date()%></div>
					<div id="textpart" name="textpart"><%=article.get(0).getRoom_review_contents()%></div>
				</div>

				<div class="contents_btn">

					<a href="room_reviewList.room?page=<%=nowPage%>"> <label
						for="review_list"><img src="img/list.png" alt="리스트이미지" />
							<input type="button" id="listview" name="listview" value="목록" />
					</label>
					</a> <span id="btn_right"> <a href="#"> <label
							for="review_modify"><img src="img/change.png" alt="수정이미지" />
								<input type="button" name="review_modify" id="review_modify"
								value="수정" /> </label>
					</a> <a
						href="boardModifyFrom.bo?board_num=<%=article.get(0).getRoom_review_no()%>&page=<%=nowPage%>">
							<label for="review_delete"> <img src="img/cancel.png"
								alt="삭제이미지" /> <input type="button" name="review_delete"
								id="review_delete" value="삭제" />
						</label>
					</a>
					</span>

				</div>
			</section>
			<hr />

			<div class="clear"></div>
			<div class="btns">
				<a href="javascript:modifyboard()"> <input type="button" value="수정" />
				</a>
				<a href="javascript:history.go(-1)"> <input type="button" value="취소" />
				</a>
				
			</div>
		</form>
		</section>

	</article>
	<div class="clear"></div>
	<footer>
		<div>
			<h1>footer넣어주세요</h1>
		</div>
	</footer>
</body>
</html>