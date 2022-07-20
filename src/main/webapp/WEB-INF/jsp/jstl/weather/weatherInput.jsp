<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input</title>
<link rel="stylesheet" href="/weather/style.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container mt-5">
		<section class="d-flex">
			<jsp:include page="menu.jsp"/>
			<div class="ml-5">
				<h3>날씨 입력</h3>
				<form class="form-group" method="post" action="/jstl/weather/weather_input">
					<div class="d-flex">
						<div class="row">
							<label class="col-form-label">날짜</label>
	    					<div class="ml-1">
		    					<input type="text" class="form-control" name="date">    					
	    					</div>
						</div>
						<div class="row ml-5">
						    <label class="col-form-label ml-5">날씨</label>
						    <div class="ml-1">					    
							    <select class="form-control" name="weather">
							      <option>맑음</option>
							      <option>흐림</option>
							      <option>비</option>
							      <option>구름조금</option>
							    </select>
						    </div>
						</div>
						<div class="row ml-5">
						    <label class="col-form-label ml-5">미세먼지</label>
						    <div class="ml-1">					    
							    <select class="form-control" name="microDust">
							      <option>보통</option>
							      <option>좋음</option>
							      <option>나쁨</option>
							      <option>최악</option>
							    </select>
						    </div>
						</div>
					</div>
					<div class="d-flex mt-5">
						<div class="input-group mb-3 row">
							<label class="col-form-label">기온</label>
							<div>
								<input type="text" class="form-control ml-1" name="temperatures">							
							</div>
							<div class="input-group-append">
								<span class="input-group-text">℃</span>
							</div>
						</div>
						<div class="input-group mb-3 row ml-5">
							<label class="col-form-label">강수량</label>
							<input type="text" class="form-control ml-1" name="precipitation">
							<div class="input-group-append">
								<span class="input-group-text">mm</span>
							</div>
						</div>
						<div class="input-group mb-3 row ml-5">
							<label class="col-form-label">풍속</label>
							<input type="text" class="form-control ml-1" name="windSpeed">
							<div class="input-group-append">
								<span class="input-group-text">km/h</span>
							</div>
						</div>						
					</div>
					<div class="d-flex justify-content-end">
						<button type="submit" class="btn btn-success">저장</button>
					</div>
				</form>
			</div>
		</section>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>