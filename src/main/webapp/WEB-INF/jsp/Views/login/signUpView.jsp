<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  	
  	
  	<link rel="stylesheet" href="/css/style.css">

  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>★★해외축구 팬들의 집합소 풋볼 코리아★★</title>
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<c:import url="/WEB-INF/jsp/include/menu.jsp" />
		
		<div class="container mt-3 d-flex justify-content-center">
			<div id="registBox" class="mt-3">
				<div class="d-flex justify-content-between mt-3">
					<input type="text" id="loginIdInput" class="form-control" placeholder="아이디">
					<button type="button" id="signupDuplicatedBtn" class="bg-warning btn" style="font-size:small">중복확인</button>
				</div>
				<input type="password" id="passwordInput" class="form-control mt-3" placeholder="비밀번호">
				<input type="password" id="confirmPasswordInput" class="form-control mt-3" placeholder="비밀번호 확인">
				<input type="text" id="nameInput" class="form-control mt-3" placeholder="이름">
				<input type="text" id="nicknameInput" class="form-control mt-3" placeholder="닉네임">
				<input type="text" id="phoneNumberInput" class="form-control mt-3" placeholder="전화번호">
				<button type="button" class="form-control btn mt-3 text-white" id="signUpBtn">회원가입</button>
			</div>
		</div>		
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
		
	
	</div>
	
	<script>
		
		$(document).ready(function(){
			
			$("#signupDuplicatedBtn").on("click",function(){
				
				let loginId = $("#loginIdInput").val();
				
				if(loginId == ""){
					alert("아이디를 입력해 주세요.");
					return;
				}
				
				$.ajax({
					//tudse
					type:"post",
					url:"/user/signupDuplicated",
					data:{"loginId":loginId},
					success:function(data){
						if(data.result == "success"){
							alert("사용 가능한 아이디입니다.");
						} else {
							alert("이미 사용중인 아이디입니다.");
						}						
					},
					error:function(){
						alert("에러 발생");
					}
				});
			});
			
			$("#signUpBtn").on("click",function(){
				let loginId = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				let confirmPassword = $("#confirmPasswordInput").val();
				let name = $("#nameInput").val();
				let nickname = $("#nicknameInput").val();
				let phoneNumber = $("#phoneNumberInput").val();
				
				if(loginId == ""){
					alert("아이디를 입력해 주세요.");
					return;
				}
				if(password == ""){
					alert("비밀번호를 입력해 주세요.");
					return;
				}
				if(confirmPassword ==""){
					alert("비밀번호 확인란을 입력해 주세요.");
					return;
				}
				if(password != confirmPassword){
					alert("비밀번호가 일치하지 않습니다 \n다시 확인해 주십시오.");
					return;
				}
				if(name == ""){
					alert("이름을 입력해 주세요.");
					return;
				}
				if(nickname == ""){
					alert("닉네임을 입력해 주세요.");
					return;
				}
				if(phoneNumber == ""){
					alert("전화번호를 입력해 주세요.");
					return;
				}
				
				$.ajax({
					//tudse
					type:"post",
					url:"/user/signup",
					data:{"loginId":loginId, "password":password, "name":name, "nickname":nickname, "phoneNumber":phoneNumber},
					success:function(data){
						
						if(data.result == "success"){
							location.href = "/footballday";
							alert("회원가입이 완료 되었습니다.");
						} else {
							alert("회원가입 실패");
						}
					},
					error:function(){
						alert("에러 발생");
					}
				});
				
			
			});
			
		});
	</script>

</body>
</html>