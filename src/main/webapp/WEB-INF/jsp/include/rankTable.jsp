<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<div class="mt-3">
		
		<div class="container" style="overflow:auto; height:300px;">
			

				<select name="leagueId" id="leagueId" class="form-control" onchange="leagueChange(this.value)">
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
					
						<tr class="text-center">
							<td>1</td>
							<td>토트넘</td>
							<td>84</td>
							<td>80</td>
						</tr>
					
					<%--반복 끝 --%>
				</tbody>
				
			</table>
			

		</div>
	</div>