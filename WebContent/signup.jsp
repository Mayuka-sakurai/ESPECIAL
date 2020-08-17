<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/signup.css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<title>:: Sign up ::</title>
</head>


<!-- Header Menu Begin-->

<header class="header-section set-bg"
	style="background-image: url(img/signup_top.jpg);">
<%@include file="header.html" %>
</header>
<!-- Header Menu End -->



<!--Sign up Form Begin -->


<div id="wrap_form">
	<div id="top_line">
		<img src="img/signup_title.png" alt="환영이미지"> <br> <span
			class="ness"><b>*</b> <span class="subtext">표시는 필수 입력사항
				입니다.</span></span>
	</div>
	<br />
	<br />
	<div id="join">
		<form name="join" method="POST" action="members_DB.jsp">
			<!--Default Information Table-->
			<table name="default_info" class="table">

				<!-- Insert informations -->
				<th id="title1">:: 기본정보입력::</th>
				<tr>
					<td><span class="ness"><b>*</b></span> 성명 (국문)</td>
					<td><select name="gender" style="height: 33px; width: 100px;">
							<option value="Mr">Mr.</option>
							<option value="Mrs">Mrs.</option>
					</select>&nbsp; <input type="text" size="20" maxlength="20" name="name"
						style="width: 200px;" required="이름을 입력 해주세요" /></td>
				<tr>
					<td><span class="ness"><b>*</b></span> 성명 (영문)</td>
					</td>
					<td>First name&nbsp;(이름)&nbsp; <input type="text" size="20"
						maxlength="20" name="first_name" style="width: 150px;"
						required="영문 성(Family Name)을 입력 해주세요"> &nbsp; Last name
						(성)&nbsp; <input type="text" size="20" maxlength="20"
						name="last_name" style="width: 150px;" required="영문 이름을 입력 해주세요">
						<br> <span class="subtext">영문이름은 여권과 동일하게 작성 해주세요</span></td>
					</td>
				</tr>
				<tr>
					<td><span class="ness"><b>*</b></span> 생년월일</td>
					</td>
					<td colspan="4"><select name="month"
						style="width: 69px; height: 26px;">
							<option value="00">-----</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select> 월&nbsp; <select name="day" style="width: 69px; height: 26px;">
							<option value="00">-----</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
					</select> 일 <br /> <span class="subtext">생년월일은 확인 용도 이외의 다른 용도로 사용되지
							않습니다.</span></td>
				</tr>
				<tr>
					<td><span class="ness"><b>*</b></span> 이메일</td>
					<td><input type="text" name="mail_id" size="15" maxlength="30"
						required="이메일은 필수 입력사항입니다."> @ <input type="text"
						name="mail_domain" size="15" maxlength="30"> <select
						style="height: 34px;" name="domain">
							<option value="0">직접입력</option>
							<option value="naver">naver.com</option>
							<option value="daum">daum.net</option>
							<option value="hanmail">hanmail.net</option>
							<option value="gmail">gmail.com</option>
					</select>&nbsp;</td>
				</tr>
				<tr>
					<td><span class="ness"><b>*</b></span>&nbsp;연락처</td>
					<td><input type="text" size="4" name="tel_first" maxlength="4"
						placeholder="----" style="width: 100px;"
						required="연락처는 필수 입력사항입니다.">&nbsp;-&nbsp; <input
						type="text" size="4" name="tel_second" maxlength="4"
						placeholder="----" style="width: 100px;"
						required="연락처는 필수 입력사항입니다.">&nbsp;-&nbsp; <input
						type="text" size="4" name="tel_third" maxlength="4"
						placeholder="----" style="width: 100px;"
						required="연락처는 필수 입력사항입니다.">&nbsp;
				</tr>
				<tr>
					<td><span class="ness"><b>*</b></span>&nbsp;주소</td>
					<td><input type="text" id="sample6_postcode"
						placeholder="우편번호" name="zipcode" size="10"> <input
						type="text" id="sample6_address" placeholder="주소"
						name="address_main" size="15"> <input type="text"
						id="sample6_extraAddress" placeholder="참고항목" size="15"
						name="address_extra">&nbsp;&nbsp; <input type="text"
						id="sample6_detailAddress" placeholder="상세주소"
						name="address_detail" size="15"> <input type="button"
						onclick="sample6_execDaumPostcode()" value="우편번호 찾기" id="zipcode">
					</td>
				</tr>

				<th id="title2">:: 웹페이지 가입정보 ::</th>

				<tr>
					<td><span class="ness"><b>*</b></span>&nbsp;아이디</td>
					<td><input type="text" size="20" id="id" name="id"
						maxlength="30" oninput="checkID()" />&nbsp; <span
						class="check_font" id="id_result"></span> <br> <span
						class="subtext">아이디는 6~15자로 입력 해주세요.</span></td>
				</tr>
				<tr>
					<td><span class="ness"><b>*</b></span>&nbsp;비밀번호</td>

					<td><input type="password" size="20" maxlength="30" name="pw"
						required="비밀번호는 필수 입력사항입니다"> &nbsp; <span
						class="check_font" id="pw_check"></span> <br> <span
						class="subtext">비밀번호는 8~20자로 입력 해주세요.</span></td>
				</tr>
				<tr>
					<td><span class="ness"><b>*</b></span>&nbsp;비밀번호 확인</td>
					<td><input type="password" size="20" maxlength="30"
						name="pwcheck" required="비밀번호를 다시 입력 해주세요"></td>
				</tr>

				<tr>
					<td colspan="2" style="background-color: #fff;" class="none">
						<input type="checkbox" name="ok">&nbsp;회원규약을 확인하였습니다.
					</td>
				</tr>


				<tr id="buttons" class="none_bgcolor">
					<td colspan="2" style="background-color: #fff;" class="none">
						<a href="mainpage.html"><input type="button" value="가입취소"
							class="cancel-btn" /></a> <input type="reset" value="다시 작성"
						class="cancel-btn" /> <input type="button" value="가입하기"
						class="primary-btn" onclick="information_check()" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>
<%@include file="footer.jsp"%>
</body>
<script src="js/join.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</html>