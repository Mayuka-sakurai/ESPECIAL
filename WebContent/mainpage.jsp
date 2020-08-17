<%@ page language="java" contentType="text/html; charset = UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	
%>


<!DOCTYPE html>
<html lang="KO">

<head>
<meta charset="UTF-8">
<title>:: ESPECIAL ::</title>

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
						alt="메인이미지"></a>
				</div>
				<nav class="nav-right">
					<ul>
						<li><a href="#">JP</a></li>
						<li><a href="#">KO</a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="signup.jsp">Signup</a></li>
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
								<li><a href="room_reviewedit.jsp">Review</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<!-- Header End -->

	<!-- Hero Area Section Begin -->
	<section class="hero-area set-bg" data-setbg="img/main/main1.png">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="hero-text">
						<h4 style="position: relative;"># Beyond Special</h4>
						<div class="video-section">
							<div class="container">
								<div class="video-text set-bg">
									<a href="https://www.youtube.com/watch?v=yU5LyoQEPLw"
										class="pop-up"><i class="fa fa-play"></i></a>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- Hero Area Section End -->
	<!-- Video Section Begin -->

	<!-- Video Section End -->
	<!-- Search Filter Section Begin -->
	<section class="search-filter">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<form action="#" class="check-form">
						<h4>Check Availability</h4>
						<div class="datepicker">
							<p>Check-In</p>
							<input type="text" class="datepicker-1" value="dd / mm / yyyy">
							<img src="img/calendar.png" alt="ë¬ë ¥ê·¸ë¦¼">
						</div>
						<div class="datepicker">
							<p>Check-Out</p>
							<input type="text" class="datepicker-2" value="dd / mm / yyyy">
							<img src="img/calendar.png" alt="ë¬ë ¥ê·¸ë¦¼">
						</div>

						<div class="room-quantity">
							<div class="single-quantity">
								<p>Adults</p>
								<div class="pro-qty">
									<input type="text" value="0">
								</div>
							</div>
							<div class="single-quantity">
								<p>Children</p>
								<div class="pro-qty">
									<input type="text" value="0">
								</div>
							</div>
							<div class="single-quantity last">
								<p>Rooms</p>
								<div class="pro-qty">
									<input type="text" value="0">
								</div>
							</div>
						</div>
						<div class="room-selector">
							<p>Reservation</p>
							<select class="suit-select">
								<option>ESPECIAL</option>
								<option value="president">President Room</option>
								<option value="suite">Suite Room</option>
								<option value="double">Residence Double</option>
								<option value="Single">Residence Single</option>
								<option value="family">Family Room</option>
							</select>
						</div>
						<button type="submit">Go</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Search Filter Section End -->

	<!-- Promotion Section -->
	<hr class="hr">
	<div id="inner_wrap">
		<div class="promotion">
			<H2 class="reference_title">
				#&nbsp;<span class="pointcolor">S</span>pecial Offers
			</H2>

			<div class="inner_center">
				<div id="promotion1">
					<ul>
						<li><img src="img/promotion/12777.jpg" alt="ì´ë²¤í¸1" /></li>
						<li>
							<h4 class="pointcolor_text">Â· ESPECIAL Trip Tour Â·</h4>
						</li>
						<li class="package"># PACKAGE</li>
						<li>ESPECIALì´ ì¶ì²íë ì¼ì ì ì¦ê¸°ì¸ì!</li>
						<li>ìì½ : 2020-08-01 ~ 2020-12-31</li>
						<li><span class="currency">KRW</span>&nbsp;<span class="cost"><b>0
									~</b></span></li>
						<li><a href="#" class="promotion_more">more</a></li>
					</ul>
				</div>

				<div id="promotion2">
					<ul>
						<li><img src="img/promotion/20836.jpg" alt="ì´ë²¤í¸2" /></li>
						<li>
							<h4 class="pointcolor_text">Â· Refresh Time Â·</h4>
						</li>
						<li class="package"># PACKAGE</li>
						<li>ESPECIALìì ìëíê³  ì¾ì í ë¦¬íë ì
							íë§íì</li>
						<li>ìì½ : 2020-09-01 ~ 2020-12-31</li>
						<li><span class="currency">KRW</span>&nbsp;<span class="cost"><b>336,000
									~</b></span></li>
						<li><a href="#" class="promotion_more">more</a></li>
					</ul>
				</div>

				<div id="promotion3" style="margin-left: 0;">
					<ul>
						<li><img src="img/promotion/20778.jpg" alt="ì´ë²¤í¸3" /></li>
						<li>
							<h4 class="pointcolor_text">Â· Group Reservation Â·</h4>
						</li>
						<li class="package"># PACKAGE</li>
						<li>ESPECIALìì ì¹êµ¬ë¤ê³¼ì ì¦ê±°ì´ ê¸°ìµì
							ë§ëì¸ì</li>
						<li>ìì½ : 2020-08-01 ~ 2020-12-31</li>
						<li><span class="currency">KRW</span>&nbsp;<span class="cost"><b>550,000
									~</b></span></li>
						<li><a href="#" class="promotion_more">more</a></li>
					</ul>
				</div>
			</div>
		</div>

		<hr class="hr">

		<!-- Facilities Section Begin -->
		<section class="facilities-section">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">
						<div class="facilities-item set-bg"
							data-setbg="img/reservation_top.jpg">
							<div class="fi-title">
								<h2>:: ESPECIAL Rooms ::</h2>
								<p>Introduce ESPECIAL Rooms</p>
							</div>
							<div class="fi-features">
								<div class="fi-info">
									<i class="flaticon-019-television"></i>
									<p>Smart TV</p>
								</div>
								<div class="fi-info">
									<i class="flaticon-029-wifi"></i>
									<p>High Wi-fi</p>
								</div>
								<div class="fi-info">
									<i class="flaticon-003-air-conditioner"></i>
									<p>AC</p>
								</div>
								<div class="fi-info">
									<i class="flaticon-036-parking"></i>
									<p>Parking</p>
								</div>
								<div class="fi-info">
									<i class="flaticon-007-swimming-pool"></i>
									<p>Pool</p>
								</div>
							</div>
							<a href="#" class="primary-btn">Make a Reservation</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#" class="primary-btn">Other
								Rooms</a>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="facilities-item set-bg fi-right"
							data-setbg="img/swimming.png">
							<div class="fi-title">
								<h2>:: ESPECIAL Facilities ::</h2>
								<p>For all our guests and Bookers</p>
							</div>
							<a href="#" class="primary-btn">Make a Reservation</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#" class="primary-btn">Other
								Facilities</a>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="facilities-item set-bg fi-right"
							data-setbg="img/wedding.png">
							<div class="fi-title">
								<h2>:: Wedding Hall ::</h2>
								<p>Special Wedding ceremony for you</p>
							</div>
							<a href="#" class="primary-btn">Inquiry</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
					</div>
					<div class="col-lg-6">
						<div class="facilities-item set-bg fi-right"
							data-setbg="img/conference.png">
							<div class="fi-title">
								<h2>:: Conference Hall ::</h2>
								<p>Perfect conference and small meetings</p>
							</div>
							<a href="#" class="primary-btn">Inquiry</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Facilities Section End -->


		<hr class="hr">

		<!-- Rewards Section Begin -->
		<section class="rewards spad">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="row">
							<div class="rewards-img">
								<img src="img/rewards.png" alt="rewardsìê°">
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="rewards-text">
							<div class="section-title">
								<h2>
									Great Rewards<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;& Good
									Service
								</h2>
							</div>
							<p>
								ì¸ê³ ìµê³ ì í¸íì¤ íëë¡ ì ì ë ESPECIALììë<br />Great
								Rewards & Good Service"ë¥¼ ëª¨í ë¡ <br />ë¤ìí ë¦¬ìë
								ííì ëë¦¬ê³  ììµëë¤<br /> ESPECIALì ê°ì¡±ì´
								ëì¤ ê³ ê°ëì ì§ì¬ì¼ë¡ ê¸°ë¤ë¦½ëë¤!
							</p>
							<a href="signup.jsp" class="primary-btn">Sign up</a>
						</div>
					</div>
				</div>
			</div>
			<div class="container" id="rewards_mark">
				<div class="col-lg-6">
					<div class="row">
						<div class="about-img">
							<img src="img/fivestar.jpg" alt="5ì±ê¸ì´ë¯¸ì§">
						</div>
						<div class="about-img">
							<img src="img/iprefer.png" alt="rewardsìê°">
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- Rewards Section End -->

		<!-- Footer Section Begin -->
		<footer class="footer-section">
			<%@include file="footer.jsp" %>
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
</body>

</html>