<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Main</title>

        <link rel="stylesheet" href="./style.css" type="text/css" >

        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </head>
    <body>
        <div id="wrap">
            <header class="pt-3">
                <div class="text-center display-4">통나무 팬션</div>
            </header>
            <nav class="color-peru main-menu">
                <ul class="nav nav-fill">
                    <li class="nav-item"><a href="#" class="nav-link small-link font-weight-bold main-link color-white">팬션소개</a></li>
                    <li class="nav-item"><a href="#" class="nav-link small-link font-weight-bold main-link color-white">객실보기</a></li>
                    <li class="nav-item"><a href="#" class="nav-link small-link font-weight-bold main-link color-white">예약안내</a></li>
                    <li class="nav-item"><a href="#" class="nav-link small-link font-weight-bold main-link color-white">커뮤니티</a></li>
                </ul>
            </nav>
            
            <section class="contents">
                <article class="banner">
                    <img alt="메인배너" src="../picture/banner1.jpg" id="mainBanner">
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
                            <label class="ml-3">회원<input type="radio" name="type" checked id="member"></label>
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

            <footer class="text-left">
                <div class="ml-4">
                    <small class="text-muted">
                        제주특별자치도 제주시 애월읍 <br>
                        사업자 등록번호 : 111-22-255222 / 농어촌민박사업자치정 / 대표 : 김동욱 <br>
                        Copyright 2025 tongnamu All reserved 
                    </small>
                </div>
            </footer>
        </div>


        <script>
            $(document).ready(function() {
                var currentIndex = 0;

                setInterval(function () {
                    let imagePaths = ["../picture/banner1.jpg", "../picture/banner2.jpg", "../picture/banner3.jpg", "../picture/banner4.jpg"];

                    currentIndex++;
                     if(currentIndex == imagePaths.length) {
                        currentIndex = 0;
                    }
                    $("#mainBanner").attr("src", imagePaths[currentIndex]);

                }, 3000);


                $("#button").on("click", function(){
                    let on = $("#member").val();
                    let off = $("#nonMember").val();
                    let id = $("#id").val();
                    let pw = $("#pw").val();
                    let name = $("#name").val();
                    let number = $("#number").val();
                    let nonMemInput = $("#nonMemInput").val();


                    if (on == "on") {
                            if (id == "") {
                            alert("아이디를 입력해주세요.");
                            return;
                        }
                        
                        if (pw == "") {
                            alert("비밀번호를 입력해주세요.");
                            return;
                        }

                    }

                    if (off == "off") {
                        
                        if (name == "") {
                            alert("이름을 입력해주세요.");
                            return;
                        }
                        
                        if (number == "") {
                            alert("전화번호를 입력해주세요.");
                            return;
                        }

                        if (!(number.startsWith("010"))) {
                            alert("010 으로 시작하는 번호만 입력 가능합니다.");
                            return;
                        }
                        
                        if (nonMemInput == "") {
                            alert("날짜를 입력해주세요.");
                            return;
                        }

                    }

                });
                
                
                    
                $("#nonMemInput").datepicker({
                    dateFormat: "yy년 mm월 dd일",
                    minDate: 0,
                    onSelect: function( SelectedDate ) {    
                        $("#endDate").datepicker( "option", "minDate", SelectedDate );
                    }
                });

                
                $("#nonMember").on("click", function() {
                    $("#id").val() = "";
                    $("#pw").val() = "";
                    $("#onMember").addClass("d-none");
                    $("#offMember").removeClass("d-none");
                });

                $("#member").on("click", function() {
                    $("#onMember").removeClass("d-none");
                    $("#offMember").addClass("d-none");
                });



            });
        </script>
    </body>
</html>