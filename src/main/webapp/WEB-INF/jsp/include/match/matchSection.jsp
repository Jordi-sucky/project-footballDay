<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div class="container">
		
	<div class="d-flex justify-content-between mt-3">
		
		<%--메뉴 카테고리 --%>
		<div class="d-flex align-items-center">
			<img style="width:100px;" src="/images/temporary/footballday2-1.png">
			<h2>경기 일정</h2>
		</div>
		
		<%--회원정보 박스 --%>
		<div class="mr-5">
			<c:import url="/WEB-INF/jsp/include/loginBox.jsp" />
		</div>
	
	</div>
	
	<div class="w-100 sectionBox-match mt-3 container pb-3" >
		
		<%--4가지 리그 박스를 2x2로 담을수있는 div --%>
		<div>
			
			<ul class="nav">
				<li id="leagueDate" class="mt-3">
					<div class="d-flex align-items-center premierLeague" style="height:80px;">
						<img id="league-logo" style="width:100px;" class="ml-2" src="/images/temporary/Premier.png">
						<div class="d-flex align-items-center">
							<div class="ml-2 matchDate-font text-white">프리미어리그</div>
						</div>
					</div>
					<div class="mt-2 container">
						
						<ul class="nav">
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/premier/tottenham.png">
											<label>토트넘</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/premier/wolves.png">
											<label>울브스</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.20 (토)</span><br>
											<span>오후 8:30</span>
										</div>
									</div>
									
								</div>
							
							</li>
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/premier/everton.png">
											<label>에버턴</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/premier/nottingham.png">
											<label>노팅엄</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.20 (토)</span><br>
											<span>오후 11:00</span>
										</div>
									</div>
									
								</div>

							
							
							</li>
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/premier/reister.png">
											<label>레스터시티</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/premier/southampton.png">
											<label>사우스햄튼</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.20 (토)</span><br>
											<span>오후 11:00</span>
										</div>
									</div>
									
								</div>
							
							</li>						
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/premier/fulham.png">
											<label>풀럼</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/premier/brant.png">
											<label>브랜트퍼드</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.20 (토)</span><br>
											<span>오후 11:00</span>
										</div>
									</div>
									
								</div>
							
							</li>						
						</ul>
						
						<div class="d-flex justify-content-end">
							<label>더보기</label>
						</div>
					</div>
					
				</li>
				<li id="leagueDate" class="mt-3">
					<div class="d-flex align-items-center laliga" style="height:80px;">
						<img id="league-logo"  class="ml-2" src="/images/temporary/Laliga.png">
						<div class="d-flex align-items-center">
							<div class="ml-2 matchDate-font text-white">라리가</div>
						</div>						
					</div>
					<div class="mt-2 container">
						
						<ul class="nav">
							<li id="date-box" class=" w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/laliga/espanol.png">
											<label>에스파뇰</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/laliga/layo.png">
											<label>라요</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.20 (토)</span><br>
											<span>오전 3:00</span>
										</div>
									</div>
									
								</div>
							
							</li>
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/laliga/seviya.png">
											<label>세이뱌</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/laliga/viladol.png">
											<label>비야돌리드</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.20 (토)</span><br>
											<span>오전 5:00</span>
										</div>
									</div>
									
								</div>
							
							</li>
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/laliga/osasuna.png">
											<label>오사수나</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/laliga/kadis.png">
											<label>카디스</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.21 (일)</span><br>
											<span>오전 12:30</span>
										</div>
									</div>
									
								</div>
							
							</li>						
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/laliga/mayorka.png">
											<label>마요르카</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/laliga/realbetis.png">
											<label>레알 베티스</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.21 (일)</span><br>
											<span>오전 2:30</span>
										</div>
									</div>
									
								</div>
							
							</li>						
						</ul>
						<div class="d-flex justify-content-end">
							<label>더보기</label>
						</div>
					</div>
					
				</li>	
				<li id="leagueDate" class="mt-3">
					<div class="d-flex align-items-center bundesliga" style="height:80px;">
						<img id="league-logo" class="ml-2" src="/images/temporary/Bundesliga.png">
						<div class="d-flex align-items-center">
							<div class="ml-2 matchDate-font text-white">분데스리가</div>
						</div>					
					</div>
					<div class="mt-2 container">
						
						<ul class="nav">
							<li id="date-box" class=" w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/bundesliga/menglba.png">
											<label>묀헨글라드바흐</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/bundesliga/herta.png">
											<label>헤르타 BSC</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.20 (토)</span><br>
											<span>오전 3:30</span>
										</div>
									</div>
									
								</div>
							
							</li>
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/bundesliga/aukug.png">
											<label>아우크스부르크</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/bundesliga/mainz.png">
											<label>마인츠 05</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.20 (토)</span><br>
											<span>오후 10:30</span>
										</div>
									</div>
									
								</div>							
							
							</li>
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/bundesliga/volves.png">
											<label>볼프스부르크</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/bundesliga/salke.png">
											<label>샬케</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.20 (토)</span><br>
											<span>오후 10:30</span>
										</div>
									</div>
									
								</div>							
							
							</li>						
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/bundesliga/sutut.png">
											<label>슈투트가르트</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/bundesliga/fribrug.png">
											<label>프라이부르크</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.20 (토)</span><br>
											<span>오후 10:30</span>
										</div>
									</div>
									
								</div>							
							
							</li>						
						</ul>
						<div class="d-flex justify-content-end">
							<label>더보기</label>
						</div>
					</div>
					
				</li>
				<li id="leagueDate" class="mt-3">
					<div class="d-flex align-items-center serie" style="height:80px;">
						<img id="league-logo" class="ml-2" src="/images/temporary/Serie.jfif">
						<div class="d-flex align-items-center">
							<div class="ml-2 matchDate-font text-white">세리에</div>
						</div>					
					</div>
					<div class="mt-2 container">
						
						<ul class="nav">
							<li id="date-box" class=" w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/serie/torino.png">
											<label>토리노</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/serie/razio.png">
											<label>라치오</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.21 (일)</span><br>
											<span>오전 1:30</span>
										</div>
									</div>
									
								</div>	
							
							</li>
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/serie/udinese.png">
											<label>우디네세</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/serie/saler.png">
											<label>살레르니타나</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.21 (일)</span><br>
											<span>오전 1:30</span>
										</div>
									</div>
									
								</div>	
							
							</li>
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/serie/inter.png">
											<label>인테르</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/serie/spezia.png">
											<label>스페치아</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.21 (일)</span><br>
											<span>오전 3:45</span>
										</div>
									</div>
									
								</div>	
							
							</li>						
							<li id="date-box" class="w-50">
								<%--세부일정 --%>
								<div class="d-flex">
									<%--사진  --%>
									<div class="dateDetail-hr pr-2 mt-3" style="width:160px;">
										<div>
											<img class="dateDetail-img" src="/images/temporary/serie/sasuolo.png">
											<label>사수올로</label>
										</div>
										<div>
											<img class="dateDetail-img" src="/images/temporary/serie/leche.png">
											<label>레체</label>
										</div>
									</div>
									<%--일정 시간 --%>
									<div class="mt-3 d-flex align-items-center text-center ml-2">
										<div>
											<span>8.21 (일))</span><br>
											<span>오전 3:45</span>
										</div>
									</div>
									
								</div>	
							
							</li>						
						</ul>
						<div class="d-flex justify-content-end">
							<label>더보기</label>
						</div>
					</div>
					
				</li>									
			</ul>
		
		
		</div>
		

		
		
		
	</div>

</div>