<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

			<c:choose>
				<c:when test = "${not empty userId }">
					<div class="bg-white mt-3">
						<label class="d-flex justify-content-center">"${userName }"님 환영합니다. </label>
						<%--로그인/회원가입 버튼 2가지 --%>
						<div class="d-flex justify-content-around">
							<button type="button" class="form-control btn text-white signBtn" >개인정보</button>
							<button type="button" class="form-control bg-danger text-white signBtn" id="logoutBtn">로그아웃</button>
						</div>
					</div>
				</c:when>
			
				<c:otherwise>
					<div class="bg-white mt-3">
						<label class="d-flex justify-content-center">로그인을 해주세요.</label>
						<%--로그인/회원가입 버튼 2가지 --%>
						<div class="d-flex justify-content-around">
							<button type="button" class="form-control btn text-white signBtn" id="signInBtn">로그인</button>
							<button type="button" class="form-control btn text-white signBtn" id="signUpBtn">회원가입</button>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			
	<script>
		$(document).ready(function(){
			
			$("#signInBtn").on("click",function(){
				location.href = "/user/signIn";
			});
			
			$("#signUpBtn").on("click",function(){
				location.href = "/user/signUp";
			});
			
			$("#logoutBtn").on("click",function(){
				location.href = "/user/signOut";
			});
			
		});
	
	
	
	</script>