<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="container">
	
	<div class="d-flex mt-3 mb-3">
		<%--include 공지 --%>
		<div>
			<div class="d-flex align-items-center" style="height:86px;">
				<img style="width:100px;" src="/images/temporary/footballday2-1.png">
				<h2>풋볼데이 공지사항</h2>
			</div>			
			<div class="sectionBox mt-3" style="width:800px;">
				<%--공지사항 박스 --%>
				<div class="w-100  container">
					<div class="notice-alarm mt-3">
			
						<%--인삿말 머리 --%>
						<div class="d-flex justify-content-between align-items-center pt-3 container">
							<h5>☆관리자☆</h5>
							<h3>※경고문</h3>
							<span>2022-07-15</span>
							
						</div>
						<hr>
						<%--인삿말 --%>
						<div class="text-center pt-3 pb-3">
							<h5>안녕하세요 풋볼데이 운영자입니다.</h5>
							<h5 class="mt-2">본 사이트는 국내 축구팬들을위한 커뮤니티 입니다.</h5>
							<h5 class="mt-2">불법 <span class="text-danger">스포츠도박</span>, <span class="text-danger">사설광고</span> 등 커뮤니티의 목적과 </h5>
							<h5 class="mt-2">맞지않는 행위는 즉각 <span class="text-danger">이용중지</span> 처분합니다.</h5>
							<h5 class="mt-2">매일매일 즐거운 소식 전해드리는</h5>
							<h5 class="mt-2">풋볼데이가 되겠습니다. ^^</h5>
								
						</div>
					</div>
				</div>
				<%--공지사항 테이블 --%>
				<div class="mb-3" >
					
					<table class="table table-hover" style="border:none;">
						<colgroup>
							<col width="10%"></col>
							<col width="50%"></col>
							<col width="15%"></col>
							<col width="15%"></col>
							<col width="10%"></col>
						
						</colgroup>
						
						<thead>
							<tr class="text-center" style="height:50px;">
								<th>No.</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>조회수</th>
								<th>날짜</th>
							</tr>
						</thead>
					
						<tbody>
							<tr class="text-center" style="font-size:14px;">
								<td>공지</td>
								<td class="text-left">풋볼데이에 방문해 주셔서 감사합니다.</td>
								<td>관리자</td>
								<td>##</td>
								<td>Date</td>
							</tr>
						
						</tbody>
					
					</table>
					
					<div class="d-flex justify-content-end">
						<button type="button" class="btn btn-primary text-white mr-3">글쓰기</button>
					</div>
					
					<div class="text-center">
						<a href="#" class="text-dark">1</a>&nbsp;
	
						<%--꾸준히~ --%>
					</div>
				</div>
				
			</div>
		</div>
		<%--include 로그인 --%>
		<div style="width:310px;">
			<%--로그인 박스 --%>
			<div class="d-flex justify-content-center">
				<c:import url="/WEB-INF/jsp/include/loginBox.jsp" />
			</div>
			<%--리그 순위 박스 --%>
			<c:import url="/WEB-INF/jsp/include/rankTable.jsp" />
			
			
		</div>
	</div>
</section>
