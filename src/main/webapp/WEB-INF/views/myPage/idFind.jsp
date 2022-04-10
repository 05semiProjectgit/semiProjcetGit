<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 | 머신킹덤</title>
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">

 <!-- AdminLTE App -->
<!--<script src="../resources/dist/js/adminlte.min.js"></script> -->

<style type="text/css">

.card-info {
	background:#f5f6f7;
	display: flex;
	flex-direction: column;
	width: 100%;
	height: 100vh;
	justify-content: center;
	align-items: center;
	box-sizing: border-box; margin:0;
	
}

.card-header {
	background: none;
}

.card-bottom {
	display: flex;
	flex-direction: column;
	align-items: center;
}


.btn-info {
	padding: 6px 120px;
	background:#00c2cb;
	border: #00c2cb;
}

a:link, a:visited,  a:hover, a:active
{
    color: #AAAA99;
    text-decoration: none;
}

.btn .btn-info {
	width:299.33px;
}

.h4 {
	text-align:center;
}

</style>

</head>
<body>

<%-- 
	<div class="card card-info">
		<!-- <div class="card-header">
			<img src='../resources/dist/img/logo.png' width='200' height='200'>
			<h3 class="card-title">로그인</h3>
		</div> -->
		<div>
			<a href='/'>
			<img src='../resources/dist/img/logo.png' width='100'>
			</a>
		</div>
		<!-- /.card-header -->
		<!-- form start -->
		<form class="form-horizontal" action="loginCheck.do" method='post'>
			
			<div class="card-body">
			<h4 class='h4'>아이디 찾기</h4>
				<div class="form-group row">
					<label for="userid" class="col-md-8 col-form-label">이름</label>
					<input type="text" class="form-control" id="userName" name='account_Name' placeholder="이름" required>
				</div>
				<div class="form-group row">
					<label for="inputPassword3" class="col-md-8 col-form-label">이메일</label>
					<input type="password" class="form-control" id="userPw" name='account_Email' placeholder="이메일" required>
					<p class="check" id="check">${check}</p><br/>
				</div>
				
			</div>
			<!-- /.card-body -->
			<div class="card-bottom">
				<a href=''><button type="button" class="btn btn-info">아이디 찾기</button></a>
			</div>
			<br/>
			<!-- /.card-footer -->
			
		</form>
		<div>
		<a href='/myPage/pwFind.do'>비밀번호 찾기&nbsp;&nbsp;|</a>
		<a href='/myPage/login.do'>&nbsp;&nbsp;로그인&nbsp;&nbsp;|</a>
		<a href='/myPage/signup.do'>&nbsp;&nbsp;회원가입</a>
		</div><br/><br/>
			
	</div> --%>
	
	<!-- 아이디찾기 모달창 -->
	<%@ include file="../include/myPageInclude/idFindModal.jsp" %>
	
		<div class="full">
		<div class="container">
			<div class="area_inputs wow fadeIn">
				<div class="sub_title font-weight-bold">
					<h3>아이디/비밀번호 찾기</h3>
					<p>인증된 이메일만 정보 찾기가 가능합니다 :)</p>
				</div>
				<div style="margin-bottom: 10px;"
					class="custom-control custom-radio custom-control-inline">
					<input type="radio" class="custom-control-input" id="search_1" name="search_total" onclick="search_check(1)" checked="checked">
					<label class="custom-control-label font-weight-bold" for="search_1">아이디 찾기</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" class="custom-control-input" id="search_2" name="search_total" onclick="search_check(2)"> 
					<label class="custom-control-label font-weight-bold" for="search_2">비밀번호 찾기</label>
				</div>
				<div id="searchI">
					<div class="form-group">
						<label class="font-weight-bold" for="inputName_1">이름</label>
						<div>
							<input type="text" class="form-control" id="inputName_1" name="account_Name" placeholder="ex) 홍길동">
						</div>
					</div>
					<div class="form-group">
						<label class="font-weight-bold" for="inputPhone_1">휴대폰번호</label>
						<div>
							<input type="text" class="form-control" id="inputPhone_1" name="account_Tel" placeholder="ex) 01077779999">
						</div>
					</div>
					<div class="form-group">
						<button id="searchBtn" type="button" onclick="idSearch_click()" class="btn btn-primary btn-block">확인</button>
					<a class="btn btn-danger btn-block"	href="${pageContext.request.contextPath}">취소</a>
					</div>
				</div>
				<div id="searchP" style="display: none;">
					<div class="form-group">
						<label class="font-weight-bold" for="inputId">아이디</label>
						<div>
							<input type="text" class="form-control" id="inputId" name="account_Id" placeholder="ex) gildong">
						</div>
					</div>
					<div class="form-group">
						<label class="font-weight-bold" for="inputEmail_2">이메일</label>
						<div>
							<input type="email" class="form-control" id="inputEmail_2"	name="account_Email" placeholder="ex) E-mail@gmail.com">
						</div>
					</div>
					<div class="form-group">
						<button id="searchBtn2" type="button" class="btn btn-primary btn-block">확인</button>
					<a class="btn btn-danger btn-block"	href="${pageContext.request.contextPath}">취소</a>
				</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
	//체크 버튼에 따라 아이디/비밀번호 기능이 달라진다
	function search_check(num) {
		if (num == '1') {
			document.getElementById("searchP").style.display = "none";
			document.getElementById("searchI").style.display = "";	
		} else {
			document.getElementById("searchI").style.display = "none";
			document.getElementById("searchP").style.display = "";
		}
	}
	
	//$(document).ready(function() {
	
	/////////모///달///기///능///////////
	// 1. 모달창 히든 불러오기
	$('#searchBtn').click(function() {
		$('#background_modal').modal();});
		$('#background_modal').show();
	});
	// 2. 모달창 닫기 버튼
	$('.close').on('click', function() {
		$('#background_modal').hide();
	});
	// 3. 모달창 위도우 클릭 시 닫기
	$(window).on('click', function() {
		if (event.target == $('#background_modal').get(0)) {
            $('#background_modal').hide();
         }
	});
	
	// 아이디 & 스토어 값 저장하기 위한 변수
	var idV = "";
	// 아이디 값 받고 출력하는 ajax
	var idSearch_click = function(){
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/myPage/idFind?account_Name="
					+$('#inputName_1').val()+"&account_Tel="+$('#inputPhone_1').val(),
			success:function(data){
				if(data == 0){
					$('#id_value').text("회원 정보를 확인해주세요!");	
				} else {
					$('#id_value').text(data);
					// 아이디값 별도로 저장
					idV = data;
				}
			}
		});
	}

	
//});//end of $(document).ready(function()
	




	</script>
</body>
</html>