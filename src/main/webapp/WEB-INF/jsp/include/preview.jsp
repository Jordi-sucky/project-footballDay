<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<div class="sectionBox" style="width:800px;">
		<%--뉴스 미리보기 --%>
		<div class="mt-3 w-100 previewBox">
			<div class="m-2">
				<h5><b>최신 뉴스</b></h5>
				<hr>
				<div>
					<ul class="nav">
						<%--반복 --%>
						<c:forEach var="news" items="${newsInfo }" varStatus="status" end="3">
							<li class="newsBox w-50">
								<div class="d-flex">
									<img class="priviewNews-img" src="${news.imagePath }">
									<div class="ml-2" style="width:250px;">
										<label><b>${news.title }</b></label><br>
										<div class="d-flex justify-content-end">
											<label class="news-company-report mr-3">${news.company }º${news.reporter }</label>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
				<div class="d-flex justify-content-end mt-2">
					<label><a href="/news/newsMainView" class="text-dark mr-1" style="font-size:16px;">더보기</a></label>
				</div>
			</div>
		
		</div>
		
		<%--경기일정 미리보기 --%>
		<div class="mt-3 w-100 previewBox bg-secondary">
			<div class="m-2">
				<h5>Schedule</h5>
				<hr>
			
			</div>
		</div>
		
		<%--공지사항 미리보기 --%>
		<div class="mt-3 w-100 previewBox bg-primary">
		
		
		</div>
		
		
		
		
	</div>