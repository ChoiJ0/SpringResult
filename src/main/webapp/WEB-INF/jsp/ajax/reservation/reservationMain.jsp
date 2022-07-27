<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Main</title>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="/reservation/style.css" type="text/css" >
    </head>
    <body>
        <div id="wrap">
            <jsp:include page="header.jsp"/>
            <jsp:include page="section.jsp"/>
            <jsp:include page="footer.jsp"/>
        </div>


        <script>
            $(document).ready(function() {
                var currentIndex = 0;

                setInterval(function () {
                    let imagePaths = ["/reservation/image/banner1.jpg", "/reservation/image/banner2.jpg", "/reservation/image/banner3.jpg", "/reservation/image/banner4.jpg"];

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

                
             	// 라디오 버튼 선택에 따른 인풋 변경
                $("input[name=type]").on('change', function() {
                    if($(this).val() == 'member') {
                        $("#onMember").removeClass("d-none");
                        $("#offMember").addClass("d-none");
                    } else {
                        $("#offMember").removeClass("d-none");
                        $("#onMember").addClass("d-none");
                    }
                });



            });
        </script>
    </body>
</html>