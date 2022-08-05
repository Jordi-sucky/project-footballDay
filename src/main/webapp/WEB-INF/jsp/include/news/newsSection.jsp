<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


    
<div class="container">
	
	<%--메뉴 카테고리 및 회원정보박스 --%>
	<div class="d-flex justify-content-between mt-3">
		
		<%--메뉴 카테고리 --%>
		<div class="d-flex align-items-center">
			<h2>오늘의 축구뉴스</h2>
		</div>
		
		<%--회원정보 박스 --%>
		<div>
			<c:import url="/WEB-INF/jsp/include/loginBox.jsp" />
		</div>
	
	</div>
	
	<%--뉴스 본문 --%>
	<div class="d-flex w-100 sectionBox mt-3 container">
	
		<div id="recentNews" class=" mr-3">
			
			<%--반복 최신뉴스 div --%>
			<c:forEach var="news" items="${newsInfo }" varStatus="status" end="4">
				<a href="/news/newsDetail?newsId=${news.id }">
					<div class="d-flex mt-3">
						<%--사진 div--%>
						<div class="newsPicture">
							<img class="w-100 h-100" src="${news.imagePath }">
						</div>
						<%--기사 div--%>
						<div class="newsContent  w-100 ml-3 mr-3 pt-1 pb-1 d-flex flex-column text-dark">
							<%--뉴스 타이틀 --%>
							<strong>${news.title }</strong>
							<%--뉴스 본문 2줄 줄임 --%>
							
							<div>
								<c:set var="newsContent" value="${news.content }"/>
								<c:set var="newsContentLength" value="${fn:length(newsContent) }"/>
								<c:choose>
									<c:when test="${newsContentLength >= 100 }">
										<small>${fn:substring(newsContent,0,100) }...</small>
									</c:when>
									<c:otherwise>
										<small>${newsContent }</small>
									</c:otherwise>
								</c:choose>
							</div>
							
							<%--출처, 시간 --%>
							<div class="mt-auto">
								<small style="opacity:0.5">${news.company } º ${news.league }</small>
							</div>
						</div>
						
					</div>		
				</a>			
			</c:forEach>

			<div class="mb-3"></div>
		</div>
		
		<c:import url="/WEB-INF/jsp/include/news/bestNews.jsp" />
	
	
	</div>
</div>

