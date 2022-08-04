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
	
		<div class="form-control">
			<input type="text" placeholder="뉴스제목" id="title"><br>
			<textarea placeholder="뉴스본문" id="content"></textarea><br>
			<input type="file" id="file"><br>
			<input type="text" placeholder="리그명" id="league"><br>
			<input type="text" placeholder="회사명" id="company"><br>
			<input type="text" placeholder="기자명" id="reporter"><br>
			<button type="button" id="upload">업로드</button>
		
		
		</div>	
	</div>
	
	<script>
		$(document).ready(function(){
			
			$("#upload").on("click", function() {
				
				let title = $("#title").val().trim();
				let content = $("#content").val().trim();
				let league = $("#league").val().trim();
				let company = $("#company").val().trim();
				let reporter = $("#reporter").val().trim();
				
				let formData = new FormData();
				formData.append("title",title);
				formData.append("content",content);
				formData.append("league",league);
				formData.append("company",company);
				formData.append("reporter",reporter);
				formData.append("file",$("#file")[0].files[0] );
				
				
				
				$.ajax({
					//tudse ,tudepcse
					type:"post",
					url:"/news/test",
					data:formData,
					enctype:"multipart/form-data",
					processData:false,
					contentType:false,
					success:function(data){
						if(data.result == "success"){
							location.reload();
						} else {
							alert("실패");
						}
					},
					error:function(){
						alert("에러");
					}
				});

				
				

				

			});
		});
	
	</script>
</body>
</html>