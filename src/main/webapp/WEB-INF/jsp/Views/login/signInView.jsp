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
		
		<%--로그인 박스 --%>
		<div class="container mt-3 d-flex justify-content-center">
		
			<div id="loginBox" class="mt-3">
				<input type="text" id="loginIdInput" class="form-control mt-3" placeholder="아이디" style="width:300px;">
				
				<input type="password" id="passwordInput" class="form-control mt-3" placeholder="비밀번호">
				
				<label class="mt-3"><a href="#">비밀번호를 잊어버리셨나요?</a></label>
				
				<button type="button" class="form-control btn mt-3 text-white" id="loginBtn">로그인</button>
			</div>
		</div>

		<c:import url="/WEB-INF/jsp/include/footer.jsp" />	
	
	</div>

	<script>
	
		$(document).ready(function(){
			
			$("#loginBtn").on("click",function(){
				
				let loginId = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				
				if(loginId == ""){
					
					alert("아이디를 입력해주세요.");
					return;
				}
				if(password == ""){
					
					alert("비밀번호를 입력해주세요.");
					return;
				}
				
				$.ajax({
					//tudse
					type:"post",
					url:"/user/signin",
					data:{"loginId":loginId, "password":password},
					success:function(data){
						if(data.result == "success"){
							
							location.href = "/footballkorea";
						} else {
							alert("로그인에 실패하였습니다. \n다시 시도해 주십시오.");
						}
					},
					error:function(){
						alert("로그인 에러");
					}
				});
			});
			
		});
	
	</script>
</body>
</html>