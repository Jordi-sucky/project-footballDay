<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<section class="container">
	<div class="d-flex  mt-3 mb-3">
		<%--include 공지 --%>
		<div class="freeboard">
			
			<div class="d-flex align-items-center" style="height:86px;">
				<h2>풋볼데이 자유게시판</h2>
			</div>
			
			<div class="sectionBox container mt-3 pb-3" >
				<%--자유게시판 상단 사진 --%>
				<div class="mt-3 d-flex">
					<img src="/images/temporary/worldcup.jpg" class="w-100">
				</div>
				<%--post 내용 --%>
				<div class="mt-3">
					<%--자유 게시판 --%>
					<div class="container">
						<span style="color:#110aa3;"><b>자유 게시판</b></span><br>
						<div class="mt-3"><h3>한국 월드컵 16강 갈 수 있을까요?</h3></div>
						<div class="d-flex mt-2 justify-content-between">
							<%--아이콘, 이미지 유저네임, 유저닉네임, 날짜 시간--%>
							<div class="d-flex">
								<%--아이콘 --%>
								<img class="userIcon" src="/images/temporary/who.png">
								<%--유저네임 유저닉네임, 날짜 시간 --%>
								<div class="ml-3" style="font-size:14px;">
									<span>조석희 서키서키</span><br>
									<span>2022.08.06 19:06</span>
								</div>
							</div>
							<%--댓글 수, 조회 수 --%>
							<div class="d-flex align-items-center">
								<span>댓글 17 &nbsp; 조회수 800</span>	
							</div>
						
						</div>
						<hr>
						<%--본문 --%>
						<div>
							<span>한국 월드컵 16강 갈 수 있을까요?한국 월드컵 16강 갈 수 있을까요?</span>
						</div>
						<%--조횟수, 댓글 수 --%>
						<div class="mt-3 d-flex justify-content-between" style="font-size:14px;">
							<div><span>조회수 800 &nbsp; 댓글수 17</span></div>
							<div>
								<i class="bi bi-arrow-90deg-right"></i><b>공유</b> | <b>신고</b>
							</div>
						</div>
						<hr>
						<div>
							<b>댓글</b>
							<div class="mt-3 d-flex">
								<img class="userIcon" src="/images/temporary/졸라맨.png">
								<div class="ml-3">
									<b>서키서키</b><br>
									<label>
										흥민이형이 경기당 3골씩 넣고 16강 3승으로 <br> 올라갑니다 !!!
									</label> <br>
									<div style="font-size:14px;">2022.08.07 11:43</div>
								</div>
							</div>
							<%--댓글 입력창 --%>
							<div class="mt-3 commentBox container pt-2 pb-2">
								<%--코멘트창 내용들 --%>
								<div>
									<label><b>서키서키</b></label><br>
									<input class="w-100 commentInput commentInput-input" type="text" maxlength = 50 placeholder="댓글을 남겨보세요.">
								
								</div>
								<%--아이콘 및 등록버튼 --%>
								<div class="d-flex mt-2 justify-content-between">
									<div>
										<i class="bi bi-camera" ></i>
										<i class="bi bi-emoji-smile ml-2"></i>
									</div>
									<div>
										<button type="button" class="commentInput">등록</button>
									</div>
								</div>
							</div>
						
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