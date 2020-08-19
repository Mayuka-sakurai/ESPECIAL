<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.especial.VO.NoticeBean"%>
<%@page import="com.especial.VO.PageInfo"%>
<%@page import="com.especial.BoardDAO.NOTICE_BoardDAO"%>

<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.especial.Action.BoardListAction"%>
<%@page import="java.io.PrintWriter"%>

<% 
//page detail 관련 내용


	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	
	int listCount = pageInfo.getListCount();
	int nowPage = pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getEndPage();

%>

<% 
	if(id == null || pw== null || id=="" || pw =="") {
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter list = response.getWriter();
		
		list.println("<script>");
		list.println("<alert('로그인이 필요한 페이지 입니다.')>");
		list.println("<a href='login.html'>");
		list.println("</a></script>");

	}

%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>::ESPECIAL::</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/flaticon.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/review.css" type="text/css">
<!-- textedit default css -->
<link rel="stylesheet" href="css/textedit.css" type="text/css">
<link rel="stylesheet" href="css/reviewedit.css" type="text/css">
</head>

<body>

<!-- header include -->

	<!-- Page Preloder -->


	<%@include file = "header.jsp" %>



	<!-- Review Section Begin -->
	<section class="blog-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<!-- Best Review Section Begin -->
					<h1 Style="font-weight: 600; color: #a8a7a7">: Notice</h1>
					<br /> <br /> <br />

					
					<!-- List View Section Begin -->
					<div id="list_view">
						<table class="table table-hover">
							<thead>
								<b>:: Our Reviews ::</b>
								<a href="Room_review.room"><input type="button"
									class="primary-btn" id="newreview" value="New Review" /></a>

							</thead>

							<tbody>

								<% if(articleList != null && listCount > 0) { %>


								<tr id="tr_top">
									<th>No</th>
									<th>Categories</th>
									<th>Title</th>
									<th>Date</th>
									<th>Editor</th>
									<th>Hit</th>
								</tr>
								<%

	for(int i = 0; i < articleList.size(); i++){

%>

								<tr class="list" name="viewList">
									<td><%=articleList.get(i).getRoom_review_no() %></td>
									<td><%=articleList.get(i).getRoom_review_category() %></td>
									<td><a
										href="reviewDetail.room?room_review_no=<%=articleList.get(i).getRoom_review_no()%>&page=<%=nowPage %>">

											<%=articleList.get(i).getRoom_review_title() %>
									</a></td>
									<td><%=articleList.get(i).getRoom_review_date() %></td>
									<td><%=articleList.get(i).getMember_id() %></td>
									<td><%=articleList.get(i).getBOARD_READCOUNT() %></td>
								</tr>
								<%} %>
								<!-- for(int i=0; i < asrticleList.size(); i++) 종료  -->

							</tbody>
						</table>
					</div>
					<!-- List View Section End -->

					<!-- bottom page List count section start -->
					<div class="blog-pagination">

						<%if(nowPage <= 1){ %>
						&lt; &nbsp;
						<%}else{%>
						<a href="room_reviewList.room?page=<%=nowPage -1%>">&lt;</a>&nbsp;
						<%} %>
						<!-- for/else 닫기 -->

						<%for(int a = startPage; a <= endPage; a++){
						if(a == nowPage){%>
						[<%=a %>]
						<%}else{ %>
						<a href="room_reviewList.room?page=<%=a %>">[<%=a %>]
						</a>&nbsp;
						<%} %>
						<!-- else문 종료 -->
						<%} %>
						<!-- for문 종료 -->

						<%if(nowPage >= maxPage){ %>
						&gt;
						<%}else{ %>
						<a href="room_reviewList.room?page=<%=nowPage +1 %>">&gt;</a>
						<%} %>
						<!-- else문 종료 -->

					</div>
				</div>
				<%} %>
				<!-- if(articleList != null && listCount > 0) 종료 -->
				<!-- bottom page List count section End -->
				<!-- Categoty count section Start -->
				<div class="col-lg-4 col-md-6">
					<div class="blog-right">
						<div class="blog-widget">
							<div class="bw-item">
								<hr>
								<h4 id="title">::&nbsp;&nbsp;Categories</h4>
								<ul>
									<li class="a_list_colorChange" name="hotel"><a href="#">|&nbsp;&nbsp;&nbsp;Hotel<span><sup>(<%= hotel %>)
											</sup></a></span></li>
									<li class="a_list_colorChange" name="Facilities"><a
										href="#"> |&nbsp;&nbsp;&nbsp;Facilities<span><sup>(<%= facility %>)
											</sup></a></span></li>
									<li class="a_list_colorChange" name="offers"><a href="#">|&nbsp;&nbsp;&nbsp;Offers<span><sup>(<%= offer %>)
											</sup></a></span></li>
									<li class="a_list_colorChange" name="wedding"><a href="#">|&nbsp;&nbsp;&nbsp;Wedding
											& Conference <span><sup>(<%= hall%>)
											</sup>
									</a></span></li>
								</ul>
							</div>
							<hr>
						</div>
						<!-- Categoty count section End -->
						<!-- Search bar Section Start -->
						<div class="search-text">
							<form action="#" class="blog-search">
								<select id="select_category">

									<option value="category" class="search-group">Category</option>
									<option value="title" class="search-group">Title</option>
									<option value="id" class="search-group">Editor</option>

								</select> <input type="text" name="search-text">
								<button type="submit">Search</button>
							</form>
						</div>
						<!-- Search bar Section End -->
						<div class="blog-add set-bg" data-setbg="img/reservation_now.jpg">
							<h4>
								BOOKING <br />NOW !
							</h4>
							<a href="#">
								<h6>Find your fantasic Day!</h6> <input type="button"
								class="primary-btn" id="show-room" value="Show Rooms">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Review Section End -->
	<!-- Footer Section Begin -->
	<%@ include file="footer.jsp" %>
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
	

</body>

</html>