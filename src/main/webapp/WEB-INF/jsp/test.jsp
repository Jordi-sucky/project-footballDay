<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  	
  	
  	<link rel="stylesheet" href="/css/style.css">

  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>테스트 창</title>
</head>
<body>
	<div id="wrap" class="container">
			<table class="w-100 mt-1" >
				<thead>
					<tr class="text-center table-info">
						<th>순위</th>
						<th>팀명</th>
						<th>승점</th>
						<th>득실</th>
					</tr>
				
				</thead>
				
				<tbody>
					<%--반복 시작 --%>
					<c:forEach var="rankTable" items="${rank }" varStatus="status">
						<tr class="text-center">
							<td>${status.count }</td>
							<td class="text-left" style="font-size:12px;">${rankTable.clubName }</td>
							<td>${rankTable.point }</td>
							<td>${rankTable.goals }</td>
						</tr>
					</c:forEach>
					<%--반복 끝 --%>
				</tbody>
				
			</table>
				
			
		
		
		
		
	</div>
</body>
</html>