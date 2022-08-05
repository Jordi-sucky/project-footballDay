<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

		<div id="bestNews" class="mt-3">
			<div>
				<h4>오늘의 HOT 뉴스소식</h4>
			</div>
		
			<div class="mt-3">
				<%--반복 베스트뉴스 div --%>	
				<c:forEach var="news" items="${newsInfo }" varStatus="status"  end="9">
					<c:set var="newsTitle" value="${news.title }"/>
					<c:set var="newsTitleLength" value="${fn:length(newsTitle) }"/>
					<c:choose>
						<c:when test="${newsTitleLength <= 20 }">
							<a href="/news/newsDetail?newsId=${news.id }">
								<div class="w-100 mb-1 text-dark">
									<b>${status.count }</b>&nbsp<span>${news.title }</span>
								</div>
							</a>	
						</c:when>
						<c:otherwise>
							<a href="/news/newsDetail?newsId=${news.id }">
								<div class="w-100 mb-1 text-dark">
									<b>${status.count }</b>&nbsp<span>${fn:substring(newsTitle,0,18) }...</span>
								</div>
							</a>								
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
		</div>