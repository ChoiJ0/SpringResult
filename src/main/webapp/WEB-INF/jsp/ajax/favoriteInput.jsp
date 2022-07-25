<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가하기</h1>
		<div>
			<div class="form-group">
			    <label>제목</label>
			    <input type="text" class="form-control" id="titleInput">
			</div>
			<div class="form-group">
				<label>주소</label>
				<div class="d-flex">
			    	<input type="text" class="form-control" id="addrInput"> <button type="button" id="duplicateBtn" class="btn btn-primary ml-3">중복확인</button>
				</div>
			    <small id="dep_true" class="form-text text-danger">중복된 url 입니다.</small>
			    <small id="dep_false" class="form-text text-danger">저장 가능한 url 입니다.</small>
			</div>
			<button type="button" class="btn btn-success btn-block " id="addBtn">추가</button>
		</div>
	</div>
	
	<script>
		$(document).ready(function(){
			$("#dep_true").hide();
			$("#dep_false").hide();
			
			$("#duplicateBtn").on("click", function(){
				let url = $("#addrInput").val();
				
				if(url == "") {
					$("#dep_false").hide();
					$("#dep_true").hide();
				}
				
				if(url == ""){
					alert("주소를 입력해주세요.");
					return false;
				}
				
				
				$.ajax({
					type:"get",
					url:"/ajax/is_duplicate",
					data:{"url": url},
					success:function(data) {
						
						if (data.is_duplicate) {
							$("#dep_true").show();
							$("#dep_false").hide();
						} else {
							$("#dep_false").show();
							$("#dep_true").hide();
						}
						
					},
					error:function() {
						alert("에러발생!");
					}
					
				});
				
			});
			
			$("#addBtn").on("click", function() {
				let name = $("#titleInput").val();
				let url = $("#addrInput").val();
				
				if(name == ""){
					alert("제목을 입력해주세요.");
					return false;
				}
				
				if(url == ""){
					alert("주소를 입력해주세요.");
					return false;
				}
				
				if(!(url.startsWith('https://') || url.startsWith('http://'))) {
					alert("프로토콜을 입력해주세요.");
					return false;
				}
				
				$.ajax({
					type:"post",
					url:"/ajax/insert",
					data:{"name":name, "url":url},
					success:function(data) {
						
						if(data.result == "success") {
							location.href = "/ajax/list";
						} else {
							alert("삽입에러");
						}
						
					},
					error:function() {
						alert("에러발생");
					}
					
				});
				
				
			});
			
		});	
	</script>
</body>
</html>