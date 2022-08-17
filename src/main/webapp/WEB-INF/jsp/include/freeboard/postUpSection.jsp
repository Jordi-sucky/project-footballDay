<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    
    
<div class="container">

	<%--메뉴 카테고리 및 회원정보박스 --%>
	<div class="d-flex justify-content-between mt-3">
		
		<%--메뉴 카테고리 --%>
		<div class="d-flex align-items-center" style="height:86px;">
			<img style="width:100px;" src="/images/temporary/footballday2-1.png">
			<h2>자유게시판 글쓰기</h2>
		</div>	
		
		<%--회원정보 박스 --%>
		<div>
			<c:import url="/WEB-INF/jsp/include/loginBox.jsp" />
		</div>
	
	</div>
	
	
	<div class=" sectionBox mt-3 container">
		
		<%--글쓰기 항목 --%>
		<div>
			
			<input type="text" name="subject" id="titleInput" class="w-50 mt-3 inputBorder" placeholder="제목을 입력해 주세요." style="height:40px; font-size:20px;" maxlength="40">
			<br><br><span style="opacity:0.5;">※폭언,욕설 또는 본사이트의 목적과 다른 글게시시에는 즉각 이용정지 처분을 받으실수 있습니다.</span>
			<br><br>
			<textarea cols="142" rows="6" class="inputBorder" maxlength="1500" id="contentInput">
			
			
			</textarea>
			

		</div>
			<div class="d-flex justify-content-end mb-3">
				<button type="button" class="btn btn-primary mr-3" id="postUpBtn">등록</button>
				<button type="button" class="btn bg-secondary text-white" id="cancleBtn">취소</button>
			</div>
	
			
	
	
	
	</div>	

</div>

<script>
	
	$(document).ready(function(){

		$("#cancleBtn").on("click",function(){
			location.href="/freeboard/freeboardMainView"
		});
		
		$("#postUpBtn").on("click",function(){
		
			let title = $("#titleInput").val().trim();
			let content = $("#contentInput").val().trim();
			
			if(title == ""){
				
				alert("제목을 입력해 주세요.");
				return;
			}
			if(content == ""){
				
				alert("내용을 입력해 주세요.");
				return;
			}
			
			$.ajax({
				//tudse
				type:"post",
				url:"/freeboard/postUp",
				data:{"title":title, "content":content},
				success:function(data){
					
					if(data.result == "success"){
						
						location.href = "/freeboard/freeboardMainView"
					} else {
						
						alert("게시글 업로드 실패");
					}
				},
				error:function(){
					
					alert("게시글 업로드 에러");
				}
			});
			
		});
	});

</script>