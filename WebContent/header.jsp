<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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


	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="container-fluid">
			<div class="inner-header">
				<div class="logo">
					<a href="mainpage.jsp"><img src="img/logo.png"
						alt="logo" /></a>
				</div>
				<nav class="nav-right">
					<ul>
						<li><a href="#">JP</a></li>
						<li><a href="mainpage.jsp">KO</a></li>
							<%if(session.getAttribute("id") == null && session.getAttribute("pw") == null) {%>
						<li><a href="login.html">Login</a></li>
						<li><a href="signup.jsp">Signup</a></li>
						
						<%}else{ %>
						<li id="logout" name="logout">Logout</li>
						<li><a href="booking.jsp">MyPage</a></li>
						<%} %>
						<%if(session.getAttribute("id").equals("admin")){ %>
						<li><a href="#">administrator</a></li>
						<%} %>
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
</body>

	<!-- Js Plugins -->
	<script>
	
		$('#logout').on("click", function(){
			 <%session.invalidate();%>
		});
	</script>
	
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</html>