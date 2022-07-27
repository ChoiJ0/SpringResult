<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<section class="contents">
          <article class="banner">
              <img alt="메인배너" src="/reservation/image/banner1.jpg" id="mainBanner">
          </article>
          <article class="d-flex">
              <div class="color-brown col-4 d-flex justify-content-center align-items-center">
                  <div class="display-4 text-white">
                      실시간<br>예약 하기
                  </div>
              </div>
              <div class="color-peru col-5">
                  <div class="d-flex align-items-end mt-3 text-white">
                      <h3>예약 확인</h3>
                      <label class="ml-3">회원<input type="radio" name="type" checked id="member" value="member"></label>
                      <label class="ml-3">비 회원<input type="radio" name="type" id="nonMember" value="off"></label>
                  </div>
                  <div id="onMember">
                      <div class="form-group d-flex justify-content-start align-items-center mt-3">
                          <label class="col-3 col-form-label text-white small">아이디 : </label>
                          <input type="text" class="form-control col-6" id="id">
                      </div>
                      <div class="form-group d-flex justify-content-start align-items-center">
                          <label class="col-3 col-form-label text-white">비밀번호 : </label>
                          <input type="text" class="form-control col-6" id="pw">
                      </div>
                  </div>
                  <div id="offMember" class="d-none">
                      <div class="form-group d-flex justify-content-start align-items-center mt-3">
                          <label class="col-3 col-form-label text-white small">이름 : </label>
                          <input type="text" class="form-control col-6" id="name">
                      </div>
                      <div class="form-group d-flex justify-content-start align-items-center">
                          <label class="col-3 col-form-label text-white">전화번호 : </label>
                          <input type="text" class="form-control col-6" id="number">
                      </div>
                      <div class="form-group d-flex justify-content-start align-items-center">
                          <label class="col-3 col-form-label text-white" id="nonMemDate">날짜 : </label>
                          <input type="text" class="form-control col-6 " id="nonMemInput">
                      </div>
                  </div>
                  <div class="form-group d-flex justify-content-end">
                      <button class="btn bg-success text-white" id="button">조회 하기</button>
                  </div >
                  
              </div>
              <div class="color-brown col-3 d-flex justify-content-center align-items-center">
                  <div class="text-white">
                      <h4>예약문의 : </h4>
                      <h1>010-</h1>
                      <h1>000-1111</h1>
                  </div>
              </div>
          </article>
      </section>
	
</body>
</html>