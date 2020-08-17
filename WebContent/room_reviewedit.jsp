<%@page language="java" contentType="text/html; charset=UTF-8"%>

<% 
	String id = (String)session.getAttribute("id");
  	String pw = (String)session.getAttribute("pw"); 
   
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
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
						alt="Ã«Â¡ÂÃªÂ³Â Ã¬ÂÂ´Ã«Â¯Â¸Ã¬Â§Â" /></a>
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
								<li><a href="review.html">Review</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<!-- Header End -->

	<!-- Hero Area Section Begin -->
	<div class="hero-area set-bg other-page" data-setbg=""
		style="background-color: transparent;"></div>
	<!-- Hero Area Section End -->

	<!-- Review Edit Section Begin -->

	<div class="form-size">
		<div class="title">
			<br />
			<br /> <br />
			<br /> <span id="main-title" style="margin-top: 100px">Thanks
				to your Reviews!</span> <br /> <span id="sub-title">We Always
				Waiting Your Reviews</span>
		</div>
		<form action="review_insert.room" method="post" name="reviewform"
			enctype="multipart/form-data">
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
						placeholder="&nbsp;&nbsp;title" name="texttitle" id="texttitle"
						required="required" /></td>
				</tr>
			</table>
			<br />

			<hr />
			<br />
			<textarea name="content" id="editor" placeholder="Write here"
				required="required">
        </textarea>
			<br /> <input type="file" name="userfile" id="userifile">
			<div id="btns">
				<br /> <input type="submit" value="Submit"
					class="btn btn-danger btn btn-primary btn-lg" id="submit-btn" />
				&nbsp;&nbsp;&nbsp; <input type="reset" value="reset"
					class="btn btn-default btn btn-primary btn-lg" id="reset-btn" />
					<a href="javascript:history.go(-1)">
					<input type="button" value="back"
					class="btn btn-default btn btn-primary btn-lg" id="back-btn"  
					/>
					</a>
			</div>
		</form>
	</div>
	<!-- Review Edit Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="footer-item">
						<div class="footer-logo">
							<a href="mainpage.html"><img
								src="img/logo.png" alt="Ã­ÂÂ¸Ã­ÂÂ°Ã«Â¡ÂÃªÂ³Â " /></a>
						</div>
						<p>
							ESPECIAL Hotel & Resort<br /> Ã«ÂÂÃ­ÂÂÃ¬ÂÂ :
							Ã¬ÂÂ´Ã¬Â§ÂÃ¬ÂÂ<br />
							Ã¬ÂÂ¬Ã¬ÂÂÃ¬ÂÂÃ«ÂÂ±Ã«Â¡ÂÃ«Â²ÂÃ­ÂÂ¸ : 123-45-67890<br />
							Ã­ÂÂµÃ¬ÂÂ Ã­ÂÂÃ«Â§Â¤Ã¬ÂÂ Ã¬ÂÂ ÃªÂ³Â Ã«Â²ÂÃ­ÂÂ¸ :
							1234-Ã¬ÂÂÃ¬ÂÂ¸ÃªÂ°ÂÃ«ÂÂ¨-1234 <br />
							ÃªÂ°ÂÃ¬ÂÂ¸Ã¬Â ÂÃ«Â³Â´ÃªÂ´ÂÃ«Â¦Â¬Ã¬Â±ÂÃ¬ÂÂÃ¬ÂÂ :
							Ã¬ÂÂ´Ã¬Â§ÂÃ¬ÂÂ<br />
						</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="footer-item">
						<h5>Contact Info</h5>
						<ul>
							<li><img src="img/placeholder.png"
								alt="Ã¬ÂÂÃ¬Â¹Â Ã¬ÂÂ´Ã«Â¯Â¸Ã¬Â§Â" />110, Sejong Daero
								Jung-gu <br />Seoul,S.Korea<br />
							<br /> Ã¬ÂÂÃ¬ÂÂ¸Ã­ÂÂ¹Ã«Â³ÂÃ¬ÂÂ Ã¬Â¤ÂÃªÂµÂ¬
								Ã¬ÂÂ¸Ã¬Â¢ÂÃ«ÂÂÃ«Â¡Â 110(Ã­ÂÂÃ­ÂÂÃ«Â¡Â1ÃªÂ°Â)</li>
							<li><img src="img/phone.png"
								alt="Ã¬Â ÂÃ­ÂÂÃªÂ¸Â° Ã¬ÂÂ´Ã«Â¯Â¸Ã¬Â§Â" />+82(2)123-4567</li>
							<li><img src="#" alt="facebook" /><img src="#"
								alt="instgram" /><img src="#" alt="line" /><img
								src="#" alt="youtube" /></li>
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
							<li class="active"><a href="mainpage.html">Home</a></li>
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
	<script
		src="https://cdn.ckeditor.com/ckeditor5/20.0.0/classic/ckeditor.js "></script>
	<script src="textedit.js"></script>
</body>
<!-- Texteditor ÃªÂ´ÂÃ«Â Â¨ Script -->
<script>
    ClassicEditor.create(document.querySelector("#editor")).catch((error) => {
      console.error(error);
    });
  </script>
</html>
