<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>	
	
	<link rel="stylesheet" href="/reservation/style.css" type="text/css" >
</head>
<body>
	
	<div class="container">
		 <jsp:include page="header.jsp"/>
         
         <div class="container size">
         	<div class="text-center">
         		<h3 class="mt-3 mb-3">예약하기</h3>
         	</div>
         	<div>
			  <div class="form-group">
			    <label>이름</label>
			    <input type="text" class="form-control" id="addName">
			  </div>
			  <div class="form-group">
			    <label>예약날짜</label>
			    <input type="text" class="form-control" id="addDate">
			  </div>
			  <div class="form-group">
			    <label>숙박일수</label>
			    <input type="text" class="form-control" id="addDay">
			  </div>
			  <div class="form-group">
			    <label>숙박인원</label>
			    <input type="text" class="form-control" id="addHeadCount">
			  </div>
			  <div class="form-group">
			    <label>전화번호</label>
			    <input type="text" class="form-control" id="addPhoneNumber">
			  </div>
			  <button type="button" class="btn btn-warning btn-block" id="addBtn">예약하기</button>
			</div>
         	
         </div>
         
         <jsp:include page="footer.jsp"/>
	</div>
	
	<script>
		$(document).ready(function(){
			
			$( "#addDate" ).datepicker({
		    	dateFormat:"yy-mm-dd"	
		    });
			
			$("#addBtn").on("click", function(){
				let name = $("#addName").val();
				let date = $("#addDate").val();
				let day = $("#addDay").val();
				let headCount = $("#addHeadCount").val();
				let number = $("#addPhoneNumber").val();
				
				if(name == ""){
					alert("이름을 입력해주세요.");
					return false;
				}
				
				if(date == ""){
					alert("예약날짜를 입력해주세요.");
					return false;
				}
				
				if(day == ""){
					alert("숙박일수를 입력해주세요.");
					return false;
				}
				
				if(headCount == ""){
					alert("인원을 입력해주세요.");
					return false;
				}
				
				if(number == ""){
					alert("전화번호를 입력해주세요.");
					return false;
				}
				
				$.ajax({
					type:"post",
					url:"/ajax/reservation/insert",
					data:{"name":name, "date":date, "day":day, "headcount":headCount, "phoneNumber":number},
					success:function(data){

						if(data.result == "success") {
							location.href = "/ajax/reservation/list";
						} else {
							alert("추가 실패");
						}
						
					},
					error:function(){
						alert("에러 발생");
					}
					
				});
				
			});
			
		});	
	
	</script>
</body>
</html>