<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>::Order::</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet" />

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/orderlist.css" type="text/css" />
</head>

<body>


	<%@include file="header.jsp"%>
	<div id="product_List">
		<section>
			<img src="http://placehold.it/250x150" class="thumnail"
				alt="상품섬네일" />
			<ul class="product-list">
				<li>
					<ul class="product-detail">
						<li class="product-title">title</li>
						<li class="product-description">description</li>
						<li class="product-amount"><span class="amount">123,000</span>
							<span class="currency">KRW</span></li>
						<li><input type="button" value="booking now" /></li>
					</ul>
				</li>
			</ul>
		</section>
	</div>
	<%@include file="footer.jsp"%>
</body>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/main.js"></script>
</html>
