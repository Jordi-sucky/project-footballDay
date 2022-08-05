<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container">

	<%--메뉴 카테고리 및 회원정보박스 --%>
	<div class="d-flex justify-content-between mt-3">
		
		<%--메뉴 카테고리 --%>
		<div class="d-flex align-items-center">
			<h2></h2>
		</div>
		
		<%--회원정보 박스 --%>
		<div>
			<c:import url="/WEB-INF/jsp/include/loginBox.jsp" />
		</div>
	
	</div>
	
	<div class="d-flex w-100 sectionBox mt-3 container">
	
		<div id="recentNews" class="mr-3">
		
			<%--뉴스 본문 --%>
			<div class="mt-3 mr-3">
			
				<%--뉴스 본문제목 --%>
				<div class="mb-3">
					<h2>${newsDetail.title }</h2>
					<fmt:formatDate var="newsCreatedAt" value="${newsDetail.createdAt }" pattern="yyyy-MM-dd HH:mm:ss"/>
						<small style="opacity:0.5">기사입력 ${newsCreatedAt } |</small>
					<fmt:formatDate var="newsUpdatedAt" value="${newsDetail.updatedAt }" pattern="yyyy-MM-dd HH:mm:ss"/>
						<small style="opacity:0.5">최종수정 ${newsUpdatedAt }</small>
				</div>
				<%--뉴스 메인사진 --%>
				<div class="d-flex justify-content-center">
					<img src="${newsDetail.imagePath }" class="w-75">
				</div>
				<%--뉴스 본문 --%>
				
				<div class="mt-3">
					<c:set var="newsContent" value="${newsDetail.content }" />
					<% pageContext.setAttribute("newLine", "\n"); %>
					<div>${fn:replace(newsContent, newLine,"<br>") }</div>
					<br>
					<span>기사제공 <b>${newsDetail.company }</b></span><br><br>
					<span><b>${newsDetail.reporter }</b> 기자</span>
					
				</div>
			
			</div>
		</div>
	
		<c:import url="/WEB-INF/jsp/include/news/bestNews.jsp" />
	
	
	
	
	
	
	
	</div>
</div>