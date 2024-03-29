<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/reservation/style.css" type="text/css" >
</head>
<body>
	
	<div class="container">
		 <jsp:include page="header.jsp"/>
         
         <div class="container text-center">
         	<h2 class="mt-3 mb-3">예약 목록 보기</h2>
         	<table class="table">
         		<thead>
         			<tr>
         				<th>이름</th>
         				<th>예약날짜</th>
         				<th>숙박일수</th>
         				<th>숙박인원</th>
         				<th>전화번호</th>
         				<th>예약상태</th>
         				<th></th>
         			</tr>
         		</thead>
         		<tbody>
         			<c:forEach var="booking" items="${list}" >
	         			<fmt:formatDate value="${booking.date}" pattern="yyyy년 MM월 dd일" var="date"/>
	         			<tr>
	         				<td>${booking.name}</td>
	         				<td>${date}</td>
	         				<td>${booking.day}</td>
	         				<td>${booking.headcount}</td>
	         				<td>${booking.phoneNumber}</td>
	         				<c:choose>
	    						<c:when test="${booking.state eq '대기중'}">
	    							<td class="text-primary">${booking.state}</td>
	    						</c:when>
	    						<c:otherwise>	    						
			         				<td class="text-success">${booking.state}</td>	    						
	    						</c:otherwise>     				
	         				</c:choose>
	         				<td>
	         					<button type="button" class="btn btn-danger btn-sm delBtn" data-id-index="${booking.id}">삭제</button>
	         				</td>
	         			</tr>
         			</c:forEach>
         		</tbody>
         	</table>
         </div>
         
         <jsp:include page="footer.jsp"/>
	</div>
	
	<script>
		$(document).ready(function(){
			
			$(".delBtn").on("click", function(){
				let id = $(this).data("id-index");
				
				$.ajax({
					type:"post",
					url:"/ajax/reservation/delete",
					data:{"id": id},
					success:function(data){
						
						if(data.result == "success"){
							location.reload();
						} else {
							alert("삭제 실패");
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