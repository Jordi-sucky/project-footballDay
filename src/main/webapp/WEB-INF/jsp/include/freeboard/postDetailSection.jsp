<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<section class="container">
	<div class="d-flex  mt-3 mb-3">
		<%--include 공지 --%>
		<div class="freeboard">
			
			<div class="d-flex align-items-center" style="height:86px;">
				<a href="/freeboard/freeboardMainView">
					<img src="/images/temporary/footballday2-1.png" style="width:100px;">
				</a>	
				<h2>풋볼데이 자유게시판</h2>
			</div>
			
			<div class="sectionBox container mt-3 pb-3" >
				<%--자유게시판 상단 사진 --%>
				<div class="mt-3 d-flex">
					<img src="/images/temporary/colaju.webp" class="w-100" style="height:300px;">
					
				</div>
				<%--post 내용 --%>
				<div class="mt-3">
					<%--자유 게시판 --%>
					<div class="container">
						<span style="color:#110aa3;"><b>자유 게시판</b></span><br>
						<div class="mt-3"><h3>${post.title }</h3></div>
		
						<div class="d-flex mt-3 justify-content-between">
							<%--아이콘, 이미지 유저네임, 유저닉네임, 날짜 시간--%>
							<div class="d-flex">
								<%--아이콘 --%>
								<c:choose>
									<c:when test="${post.iconPath == null }">
										<img class="userIcon" src="/images/temporary/who.png">
									</c:when>
									<c:otherwise>
										<img class="userIcon" src="${post.iconPath }">
									</c:otherwise>
								</c:choose>
								<%--유저네임 유저닉네임, 날짜 시간 --%>
								<div class="ml-3" style="font-size:14px;">
									<span>${post.userNickname }</span><br>
									<span>
										<fmt:formatDate value="${post.createdAt }" pattern="yyyy.MM.dd HH:mm"/>
										<%--본인이 맞으면 보이기 아니면 숨기기--%>
										<c:choose>
											<c:when test="${post.userId == userId }">
												<button type="button" class="ml-2 postBtnDesign postBtnDesign-input" style="background-color:#78b5fa;">수정</button>
												<button type="button" class="ml-2 postBtnDesign postBtnDesign-input" style="background-color:#ff582e;">삭제</button>
											</c:when>
										</c:choose>
									</span>
								</div>
							</div>
							<%--댓글 수, 조회 수 --%>
							<div class="d-flex align-items-center">
								<span>댓글 ${post.comments} &nbsp; 조회수  ${post.visit }</span>	
							</div>
						
						</div>
						<hr>
						<%--본문 --%>
						<div>
							<% pageContext.setAttribute("newLine", "\n"); %>
							<label>
								${fn:replace(post.content, newLine,"<br>") }
							</label>
						</div>
						<%--조횟수, 댓글 수 --%>
						<div class="mt-3 d-flex justify-content-between" style="font-size:14px;">
							<div><span>조회수 ${post.visit } &nbsp; 댓글수 ${post.comments }</span></div>
							<div>
								<i class="bi bi-arrow-90deg-right"></i><b>공유</b> | <b>신고</b>
							</div>
						</div>
						<hr>
						<div id="cmtBox">
							<b>댓글</b>
							<c:forEach var="comment" items="${comment }" varStatus="status">
								<div class="mt-3 d-flex">
									
									<c:choose>
										<c:when test="${comment.iconPath == null }">
											<img class="userIcon" src="/images/temporary/who.png">
										</c:when>
										<c:otherwise>
											<img class="userIcon" src="${comment.iconPath }">
										</c:otherwise>
									</c:choose>
									<div class="ml-3">
										<b>${comment.userNickname }</b><br>
										<label>
											${comment.comment }
										</label> <br>
										<div style="font-size:14px;">
											<fmt:formatDate value="${comment.createdAt }" pattern="yyyy.MM.dd HH:mm"/>
											
											<c:choose>
												<c:when test="${comment.userId == userId }">
													<button type="button" class="ml-2 postBtnDesign postBtnDesign-input commentFix" data-comment-id="${comment.id }" >수정</button>				
													<button type="button" class="ml-2 postBtnDesign postBtnDesign-input commentDel" data-comment-id="${comment.id }" >삭제</button>
												</c:when>
											</c:choose>						
										</div>
									</div>
									
								</div>
								<div class="mt-3 commentBox container pt-2 pb-2" style="display:none;" id="commentFixBox${comment.id }">
									<%--코멘트창 내용들 --%>
									<div>
										<input class="w-100 commentInput commentInput-input" type="text" maxlength = 50 placeholder="내용을 입력해 주세요." id="commentFixInput${comment.id }">
									</div>
									<%--아이콘 및 등록버튼 --%>
									<div class="d-flex mt-2 justify-content-between">
										<div>
											<i class="bi bi-camera" ></i>
											<i class="bi bi-emoji-smile ml-2"></i>
										</div>
										<div>
											<button type="button" class="commentInput commentInput-input commentFixBtn" data-comment-id="${comment.id }">등록</button>
										</div>
									</div>
								</div>															
							</c:forEach>

							
							<%--댓글 입력창 --%>
							<c:choose>
								<c:when test="${not empty userId}">
									<div class="mt-3 commentBox container pt-2 pb-2">
										<%--코멘트창 내용들 --%>
										<div>
											<label><b>${userNickname }</b></label><br>
											<input class="w-100 commentInput commentInput-input" type="text" maxlength = 50 placeholder="댓글을 남겨보세요." id="commentInput">
										
										</div>
										<%--아이콘 및 등록버튼 --%>
										<div class="d-flex mt-2 justify-content-between">
											<div>
												<i class="bi bi-camera" ></i>
												<i class="bi bi-emoji-smile ml-2"></i>
											</div>
											<div>
												<button type="button" class="commentInput commentInput-input" id="commentUpBtn">등록</button>
											</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="mt-3 commentBox container pt-2 pb-2">
										<%--코멘트창 내용들 --%>
										<label>※댓글입력은 로그인 후 이용 가능합니다.</label>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			
			</div>
		</div>
		<%--include 로그인 --%>
		<div id="rightSection">
			<%--로그인 박스 --%>
			<div class="d-flex justify-content-center">
				<c:import url="/WEB-INF/jsp/include/loginBox.jsp" />
			</div>

			<%--광고 --%>
			
		</div>
	</div>



</section>

<script>
	$(document).ready(function(){
		
		
		
		
		$("#commentUpBtn").on("click",function(){
			
			let comment = $("#commentInput").val().trim();
			let postId = ${post.id};

			if(comment == ""){
				
				alert("댓글을 입력해 주세요.");
				return;
			}
			
			$.ajax({
				//tudse
				type:"post",
				url:"/freeboard/commentUp",
				data:{"comment":comment, "postId":postId},
				success:function(data){
					if(data.result == "success"){
						alert("댓글이 등록되었습니다.");
						location.reload();
					} else {
						alert("실패");
					}
				},
				error:function(){
					alert("에러");
				}
			});
		});
		
		$(".commentFix").on("click",function(){
			
			let commentFix = $(this).data("comment-id");
			
			let test = "#commentFixBox"+commentFix;

 			if($(test).is(":visible")){
				$(test).hide();
			} else {
				$(test).show();
			} 		

		});

			
		$(".commentFixBtn").on("click",function(){
			
			//수정 등록버튼
			let commentFixBtn = $(this).data("comment-id");
			let commentId = commentFixBtn;
			
			//수정 텍스트인풋 변수
			let commentFixInputId = "#commentFixInput"+commentFixBtn;
			
			//수정 텍스트
			let commentFixInput = $(commentFixInputId).val();
			let comment = commentFixInput;
			
			
			
			
			
			$.ajax({
				//tudse
				type:"post",
				url:"/freeboard/commentFix",
				data:{"comment":comment, "id":commentId},
				success:function(data){
					
					if(data.result == "success"){
						
						alert("댓글이 수정되었습니다.");
						location.reload();
					} else {
						
						alert("글 수정 실패");
					}
				},
				error:function(){
					
					alert("글 수정 에러");
				}

				
			});
			
			
		});
		
		$(".commentDel").on("click",function(){
			//삭제할 commentId
			let commentDel = $(this).data("comment-id");
			let postId = ${post.id};

			$.ajax({
				//tudse
				type:"post",
				url:"/freeboard/commentDel",
				data:{"id":commentDel, "postId":postId},
				success:function(data){
					
					alert("삭제 성공");
					location.reload();
				},
				error:function(){
					
					alert("삭제 실패");
				}
			
			});
		});
		

		
	});

</script>