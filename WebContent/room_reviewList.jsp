
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.especial.VO.BoardBean"%>
<%@page import="com.especial.VO.PageInfo"%>
<%@page import="com.especial.BoardDAO.BoardDAO"%>
<%@page import="com.especial.VO.ReviewCount"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.especial.Action.BoardListAction"%>
<%@page import="java.io.PrintWriter"%>

<% 
//page detail 관련 내용

	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	ArrayList<BoardBean> articleList = (ArrayList<BoardBean>)request.getAttribute("articleList");
	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	ReviewCount reviewCount = (ReviewCount)request.getAttribute("listcount");
	System.out.println("리뷰리스트 부분 아티클" + articleList);
	System.out.println("리뷰카운트" + reviewCount);
	
	int hotel = reviewCount.getHotel();
	int facility = reviewCount.getFacility();
	int hall = reviewCount.getWedding_Conference();
	int offer = reviewCount.getOffer();
	
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
<meta http-equiv="X-UA-Compatible" content="ie=edge">
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
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="container-fluid">
			<div class="inner-header">
				<div class="logo">
					<a href="mainpage.jsp"><img src="img/logo.png"
						alt="ë¡ê³ ì´ë¯¸ì§" /></a>
				</div>
				<nav class="nav-right">
					<ul>
						<li><a href="#">JP</a></li>
						<li><a href="#">KO</a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="signup.html">Signup</a></li>
					</ul>
				</nav>
				<nav class="main-menu mobile-menu">
					<ul>
						<li><a href="#">Hotel</a>
							<ul class="drop-menu">
								<li><a href="#">President Room</a></li>
								<li><a href="#">Suite Room</a></li>
								<li><a href="#">Residence Double</a></li>
								<li><a href="#">Residence Single</a></li>
								<li><a href="#">Family Room</a></li>
							</ul></li>
						<li><a href="#">Wedding & Convention</a>
							<ul class="drop-menu">
								<li><a href="#">Wedding Hall</a></li>
								<li><a href="#">Convention Room</a></li>
							</ul></li>
						<li><a href="#">Facilities</a>
							<ul class="drop-menu">
								<li><a href="#">Swimming Pool</a></li>
								<li><a href="#">Bar</a></li>
								<li><a href="#">Dining</a></li>
								<li><a href="#">Spa & Gym</a></li>
							</ul></li>
						<li><a href="#">Offers</a></li>
						<li><a href="#">Promotions</a></li>
						<li><a href="#">About us</a>
							<ul class="drop-menu">
								<li><a href="#">Location</a></li>
								<li><a href="#">News</a></li>
								<li><a href="#">Contact us</a></li>
								<li><a href="#">Inquiry</a></li>
								<li><a href="room_review.jsp">Review</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<!-- Header End -->

	<!-- Hero Area Section Begin -->
	<div class="hero-area set-bg other-page" data-setbg=""
		style="background-color: #666666;"></div>
	<!-- Hero Area Section End -->



	<!-- Review Section Begin -->
	<section class="blog-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<!-- Best Review Section Begin -->
					<h1 Style="font-weight: 600; color: #a8a7a7">: Best Review</h1>
					<br /> <br /> <br />

					<div class="blog-item" id="best_review">
						<div class="bi-pic">
							<img src="img/reservation_top.jpg" alt="best_review_img">
						</div>
						<hr>
						<div class="bi-text">
							<div class="bi-title">
								<div class="blog-time">April 15, 2020</div>
								<h3>Best Flower Festival!</h3>
								<span>#Holliday,&nbsp;<span>#Trip,&nbsp;</span><span>#Hotel,&nbsp;</span><span>#Festival</span></span>
							</div>
							<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
								Ducimus soluta molestias deserunt laboriosam consequatur eos,
								similique odit vel optio maxime tenetur atque assumenda
								inventore cupiditate impedit laborum aut minus. Soluta?</p>
						</div>
						<hr>
					</div>
					<!-- Best Review Section End -->
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
	<footer class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="footer-item">
						<div class="footer-logo">
							<a href="mainpage.jsp"><img src="img/logo.png"
								alt="í¸í°ë¡ê³ " /></a>
						</div>
						<p>
							ESPECIAL Hotel & Resort<br /> ëíì : ì´ì§ì<br />
							ì¬ììë±ë¡ë²í¸ : 123-45-67890<br /> íµì íë§¤ì
							ì ê³ ë²í¸ : 1234-ìì¸ê°ë¨-1234 <br />
							ê°ì¸ì ë³´ê´ë¦¬ì±ìì : ì´ì§ì<br />
						</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="footer-item">
						<h5>Contact Info</h5>
						<ul>
							<li><img src="img/placeholder.png" alt="ìì¹ ì´ë¯¸ì§" />110,
								Sejong Daero Jung-gu <br />Seoul,S.Korea<br /> <br />
								ìì¸í¹ë³ì ì¤êµ¬ ì¸ì¢ëë¡ 110(ííë¡1ê°)</li>
							<li><img src="img/phone.png" alt="ì íê¸° ì´ë¯¸ì§" />+82(2)123-4567
							</li>
							<li><img src="#" alt="facebook" /><img src="#"
								alt="instgram" /><img src="#" alt="line" /><img src="#"
								alt="youtube" /></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul>
							<li class="active"><a href="mainpage.jsp">Home</a></li>
							<li><a href="#">Hotel</a></li>
							<li><a href="#">Wedding & Convention</a></li>
							<li><a href="#">Facilities</a></li>
							<li><a href="#">offers</a></li>
							<li><a href="#">Promotions</a></li>
							<li><a href="#">About us</a></li>
						</ul>
					</div>
				</div>
				<div class="row pt-5">
					<div class="col-lg-12">
						<div class="small text-white text-center">Copyright &copy;
							Zia Lee. All rights reserved.</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
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
	<script>
    ClassicEditor.create(document.querySelector("#editor")).catch((error) => {
      console.error(error);
    });
  </script>

</body>

</html>