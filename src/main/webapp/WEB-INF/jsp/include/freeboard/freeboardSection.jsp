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
				<h2>풋볼데이 자유게시판</h2>
			</div>
			
			<div class="sectionBox container mt-3" >
				<%--자유게시판 상단 사진 --%>
				<div class="mt-3 d-flex">
					<img src="/images/temporary/worldcup.jpg" class="w-100">
				</div>
				
				<%--자유게시판 테이블 --%>
				<div class="mt-3">
					<table class="w-100 table table-hover" style="border:none;">
						<colgroup>
							<col width="10%"></col>
							<col width="50%"></col>
							<col width="15%"></col>
							<col width="15%"></col>
							<col width="10%"></col>
						</colgroup>
						<thead>
							<tr class="text-center">
								<th>No.</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>추천</th>
								<th>날짜</th>
							
							</tr>
						</thead>
						<tbody>	
							<%--반복 --%>
							<c:forEach var="postList" items="${postList }" varStatus="status">
								<tr class="text-center freeboardFont">
									<td>${postList.id }</td>
									<td class="text-left"><a href="/freeboard/postDetail?id=${postList.id }" class="text-dark">${postList.title }</a></td>
									<%--글자수 조절 --%>
									<c:choose>
										<c:when test="${fn:length(postList.userNickname) >= 7 }">
											<td>
												${fn:substring(postList.userNickname,0,6) }..
											</td>
									    </c:when>
									    <c:otherwise>
									    	<td>
									    		${postList.userNickname}
									    	</td>
									    </c:otherwise>
									</c:choose>	
									<td>150</td>
									
									<td>
										<fmt:formatDate  value="${postList.createdAt }" pattern="HH:mm"/>
									</td>
								</tr>
							</c:forEach>

							
							
						</tbody>
					</table>
					
					<div class="d-flex justify-content-end mb-3">
						<button type="button" class="btn btn-primary text-white mr-3" id="postBtn">글쓰기</button>
					</div>

					
					
					<div class="text-center mb-3">
						<a href="#" class="text-dark"><b>1</b></a>&nbsp;
						<a href="#" class="text-dark"><b>2</b></a>&nbsp;
						<a href="#" class="text-dark"><b>3</b></a>&nbsp;
						<a href="#" class="text-dark"><b>4</b></a>&nbsp;
						<a href="#" class="text-dark"><b>5</b></a>&nbsp;
	
						<%--꾸준히~ --%>
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
			<%--리그 순위 박스 --%>
			<c:import url="/WEB-INF/jsp/include/rankTable.jsp" />
			
			
		</div>
	</div>


</section>

<script>
	$(document).ready(function(){
			
		$("#postBtn").on("click",function(){
			
			let userName = "${userName}";
			
			if( userName == "") {
				
				alert("로그인 후 이용해 주십시오.");
				location.href="/user/signIn";
			} else {
				
				location.href="/freeboard/postUp";
			}
			
			
		});
	});

</script>