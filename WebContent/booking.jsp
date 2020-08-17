<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>::BOOKING::</title>
</head>
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
<body>
	<hr />
	<img src="img/logo.png" alt="로고"/ >
	<hr />

	<table>
		<tr>
			<td colspan="2">Booking Informations</td>
		</tr>
		<tr>
			<td>Reservation No.</td>
			<td>no123</td>
		</tr>
		<tr>
			<td>Reveration Date.</td>
			<td>2020. 01. 01. Mon. 09:00 GMT</td>
		</tr>
		<tr>
			<td cols="2">Hotel Details</td>
		</tr>
		<tr>
			<td rowspan="2">ESPECIAL Hotel & Resort</td>
			<td>서울시 중구 세종대로 110</td>
		</tr>
		<tr>
			<td>110, Sejong Daero, Jung-Gu, Seoul, S.Korea</td>
		</tr>
		<tr>
			<td>TEL</td>
			<td>02 - 111 - 1111</td>
		</tr>

		<tr>
			<td colspan="2">Booking Informations</td>
		</tr>
		<tr>
		<tr>
			<td>Web ID</td>
			<td>userid</td>
		</tr>
		<td rowspan="2">Booker Name</td>
		<td>이지아 님</td>
		</tr>
		<tr>
			<td>Lee Jia</td>
		</tr>
		<tr>
			<td>Room Type</td>
			<td>President</td>
		</tr>
		<tr>
			<td>Adult</td>
			<td>1 person</td>
		</tr>
		<tr>
			<td>Child</td>
			<td>1 person</td>
		</tr>
		<tr>
			<td>Room Count</td>
			<td>1 Room(s)</td>
		</tr>
		<tr>
			<td rowspan="2"></td>
		</tr>
		<tr>
			<td>Booking Date</td>
			<td>1 Day(s)</td>
		</tr>
		<tr>
			<td>Check-In Date</td>
			<td>2020. 01. 01 Mon 13:00</td>
		</tr>
		<tr>
			<td>Check-Out Date</td>
			<td>2020. 01. 02 Mon 11:00</td>
		</tr>
		<tr>
			<td colspan="2">Extra</td>
		</tr>
		<tr>
			<td colspan="2">Amenity</td>
		</tr>
		<tr>
			<td>Teddy Bear</td>
			<td>KRW</td>
			<td>50,000</td>
		</tr>
		<tr>
			<td>Trump Card</td>
			<td>KRW</td>
			<td>10,000</td>
		</tr>
		<tr>
			<td colspan="2">Offers</td>
		</tr>
		<tr>
			<td>OfferSet 1</td>
			<td>2020.01.01</td>
		</tr>
		<tr>
			<td>Adult</td>
			<td>1 person(s)</td>
		</tr>
		<tr>
			<td>Child</td>
			<td>1 person(s)</td>
		</tr>
		<tr>
			<td>Amanity & Offers Amount</td>
			<td>KRW</td>
			<td>150,000</td>
		</tr>
		<tr>
			<td>Room Charge</td>
			<td>KRW</td>
			<td>400,000</td>
		</tr>
		<tr>
			<td>VAT / Service Fee</td>
			<td>KRW</td>
			<td>35,000</td>
		</tr>
		<tr>
			<td>Total Charge</td>
			<td>KRW</td>
			<td>1,000,000</td>
		</tr>
	</table>
	<input type="button" name="printForm" id="printForm" value="Print"/>
	<a href="mainpage.jsp">
	<input type="button" name="mainpage" id="mainpage" value="Main Page"/>
	</a>
</body>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script>
	$('printForm').on(Click, function(){
		window.print;
	}

</script>


</html>

