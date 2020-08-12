function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ""; // 주소 변수
            var extraAddr = ""; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === "R") {
                // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else {
                // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if (data.userSelectedType === "R") {
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if (data.buildingName !== "" && data.apartment === "Y") {
                    extraAddr += extraAddr !== "" ? ", " + data.buildingName : data.buildingName;
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if (extraAddr !== "") {
                    extraAddr = " (" + extraAddr + ")";
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            } else {
                document.getElementById("sample6_extraAddress").value = "";
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("sample6_postcode").value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        },
    }).open();
}

function information_check() {
    /* form informations Detail */

    var name = document.getElementsByName("name");
    var first_name = document.getElementsByName("first_name");
    var last_name = document.getElementsByName("last_name");
    var month = document.getElementsByName("month");
    var day = document.getElementsByName("day");
    var mail_id = document.getElementsByName("mail_id");
    var mail_domain = document.getElementsByName("mail_domain");
    var tel_first = document.getElementsByName("tel_first");
    var tel_second = document.getElementsByName("tel_second");
    var tel_third = document.getElementsByName("tel_third");
    var zipcode = document.getElementsByName("zipcode");
    var address_main = document.getElementsByName("address_main");
    var address_detail = document.getElementsByName("address_detail");

    var id = document.join.id.value;
    var pw = document.join.pw.value;
    var pwcheck = document.join.pwcheck.value;

    /* values null check Section */
    if (name == null || name == "") {
        alert("이름을 입력 해주세요");
        name.focus();
    } else if (first_name == null || last_name == null || first_name == "" || last_name == "") {
        alert("영문 이름을 확인 해주세요");
        first_name.focus();
    } else if (month.values == 0 || day.values == 0) {
        alert("생년월일을 확인 해주세요");
        month.focus();
    } else if (mail_id == null || mail_domain == null || mail_id == "" || mail_domain == "") {
        alert("메일 주소를 확인 해주세요");
        mail_id.focus();
    } else if (tel_first == null || tel_second == null || tel_third == null || tel_first == "" || tel_second == "" || tel_third == "") {
        alert("전화번호를 확인 해주세요");
        tel_first.focus();
    } else if (zipcode == null || address_main == null || address_detail == null) {
        alert("우편번호 찾기로 주소를 입력해주세요!<br/> 해외 거주자의 경우 임의주소로 지정해주세요");
        address_main.focus();
    } else if (pwcheck == "" || pwcheck == null) {
        alert("비밀번호 재확인값이 없습니다");
        pwcheck.focus();
    } else if (id.length < 6 || id.length > 15) {
        alert("아이디는 6~15자 이내로 입력 해주세요");
        id.focus();
    } else if (pw.length < 8 || pw.length > 20) {
        alert("비밀번호는 8~20자 이내로 입력 해주세요");
        pw.focus();
    } else if (pw !== pwcheck) {
        alert("비밀번호가 서로 다릅니다");
        pwcheck.focus();
    } else {
        document.join.submit();
    }
}
// ajax로 아이디 중복확인 만들기!!
// id 유효성 검사 (1 = 중복있음, 0 = 중복없음)

// function checkID() {
//     //아니면 클릭시 진행하는것으로 변경할 예정
//     //input id 부분  id=id / name =id
//     var id = $("#id").val();

//     $.ajax({
//         url: "/idchk.do",
//         type: "post",
//         data: { id: id },
//         success: function(data) {
//             if ($.trim(data) == 0) {
//                 $("#id_result").html("사용이 가능한 아이디 입니다");
//             } else {
//                 $("#id_result").html("사용 불가능한 아이디 입니다.");
//             }
//         },
//         error: function() {
//             alert("에러입니다!!");
//         },
//     });
// }