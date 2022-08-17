<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="container">
	
	<div class="d-flex mt-3 mb-3">
		<%--좌 섹션--%>
		<c:import url="/WEB-INF/jsp/include/preview.jsp" />
		<%--우 섹션 --%>
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