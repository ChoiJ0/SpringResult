<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>section</title>
</head>
<body>

	<div class="ml-5">
		<h3>과거 날씨</h3>
		<table class="table text-center">
			<thead>
				<tr>
					<th>날짜</th>
					<th>날씨</th>
					<th>기온</th>
					<th>강수량</th>
					<th>미세먼지</th>
					<th>풍속</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="record" items="${weather}">
					<tr>
						<td><fmt:formatDate value="${record.date}" pattern="yyyy년 MM월 dd일"/></td>
						<td>
							<c:choose>
								<c:when test="${record.weather eq '비'}">
									<img src="/weather/image/rainy.jpg" width="30">
								</c:when>
								<c:when test="${record.weather eq '흐림'}">
									<img src="/weather/image/cloudy.jpg" width="30">
								</c:when>
								<c:when test="${record.weather eq '맑음'}">
									<img src="/weather/image/sunny.jpg" width="30">
								</c:when>
								<c:when test="${record.weather eq '구름조금'}">
									<img src="/weather/image/partlyCloudy.jpg" width="30">
								</c:when>
								<c:otherwise>
									${record.weather}
								</c:otherwise>
							</c:choose>
						</td>
						<td>${record.temperatures}℃</td>
						<td>${record.precipitation}mm</td>
						<td>${record.microDust}</td>
						<td>${record.windSpeed}km/h</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>