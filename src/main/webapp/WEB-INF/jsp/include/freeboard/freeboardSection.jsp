<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container">

	<%--메뉴 카테고리 및 회원정보박스 --%>
	<div class="d-flex justify-content-between mt-3">
		
		<%--메뉴 카테고리 --%>
		<div class="d-flex align-items-center">
			<h2>★자유 게시판★</h2>
		</div>
		
		<%--회원정보 박스 --%>
		<div>
			<c:import url="/WEB-INF/jsp/include/loginBox.jsp" />
		</div>
	
	</div>
	
	<%-- --%>
	<div class="d-flex w-100 sectionBox mt-3 container">
		
	</div>


</div>