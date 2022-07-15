<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core</title>
</head>
<body>
	<h1>1. JSTL core 변수</h1>
	
	<c:set var="number1" value="36"/>
	<c:set var="number2">3</c:set>
	
	<h4>첫번째 숫자 : ${number1}</h4>
	<h4>두번째 숫자 : ${number2}</h4>
	
	<h1>2. JSTL core 연산</h1>
	
	<h4>더하기 : ${number1 + number2}</h4>
	<h4>빼기 : ${number1 - number2}</h4>
	<h4>곱하기 : ${number1 * number2}</h4>
	<h4>나누기 : ${number1 / number2}</h4>
	
	<h1>3. JSTL core out</h1>
	
	<c:out value="<title>core out</tilte>"></c:out>
	
	<h1>4. JSTL core if</h1>
	<c:set var="avg" value="${ (number1 + number2) / 2}"/>
	<c:if test="${avg ge 10}">
		<h1>${avg}</h1>
	</c:if>
	
	<c:if test="${avg lt 10}">
		<h3>${avg}</h3>
	</c:if>
	
	<h1>5. core if</h1>
	<c:set var="sum" value="${number1 * number2}" />
	<c:if test="${sum gt 100}">
		<c:out value="<script>alert('너무 큰수입니다.')</script>" escapeXml="false"></c:out>	
	</c:if>
	
	
</body>
</html>