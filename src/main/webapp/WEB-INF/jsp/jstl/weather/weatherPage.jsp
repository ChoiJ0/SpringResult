<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Weather</title>
<link rel="stylesheet" href="/weather/style.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<%-- 	<jsp:include page="menu.jsp"/> --%>

	<div class="container">
		<section class="d-flex">
			<div class="menu">
				<div class="side text-center mt-2">
					<img src="/weather/image/logo.png" width="100">
				</div>
				<nav class="mt-3">
					<ul class="nav d-flex flex-column">
						<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">날씨</a><li>
						<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">날씨입력</a><li>
						<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">테마날씨</a><li>
						<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">관측 기후</a><li>
					</ul>			
				</nav>
			</div>
			<div>
				<h3>과거 날씨</h3>
				<table class="table">
					<thead>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					
					</tbody>
				</table>
			</div>
		</section>	
		<footer class="d-flex text-justify">
			<div><img src="/weather/image/footerLogo.png" width="150"></div>
			<div class="font-weight-light text-muted mt-3 font-size">
				(07062) 서울시 동작구 여의대방로16길 61 <br>
				Copyright@2020 KMA. All Rights RESERVED.
			</div>
		</footer>
		
		
	</div>
	
	
</body>
</html>