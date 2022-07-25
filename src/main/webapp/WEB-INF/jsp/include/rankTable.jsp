<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<div class="mt-3">
		
		<div class="container" style="overflow:auto; height:300px;">
			

				<select name="leagueId" id="leagueId" class="form-control">
					<option value="1" selected>프리미어리그</option>
					<option value="2">세리에</option>
					<option value="3">분데스리가</option>
					<option value="4">라리가</option>
				
				</select>
	
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
		<div class="d-flex justify-content-end">
			<span class="m-1" style="font-size:14px;"><a href="#" class="text-dark">자세히</a></span>
			
		</div>
	</div>
	
	<script>

	</script>