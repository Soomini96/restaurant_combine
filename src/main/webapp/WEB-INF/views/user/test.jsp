<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Restaurant Search</title>
</head>
<body>
<div style="text-align:center; margin: 50px 0px;">

    <div style="display: inline-block; border-bottom: 1px solid black; padding-bottom: 30px; margin-bottom : 20px;">
        <input type="text" id="restName" name="restName" style="width:400px; display: inline" onkeyup="enterkey();"/>
        <button type="submit" id="search" name="search" style="margin:0px 30px;" onclick="restaurantSearch()">검색</button>
    </div>

    <div id="restList">
        <div style="height:400px; display:flex; justify-content: center; align-items: center; font-size: 2em;">
            <div>맛집을 검색해 주세요!</div>
        </div>
    </div>

</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</body>
<script type="text/javascript">
    function restaurantSearch(){
        $.ajax({
            method : 'GET'
            , url : "https://dapi.kakao.com/v2/local/search/keyword.json"
            , data : {
                query : $("#restName").val() //사용자가 검색한 키워드
                , category_group_code : "FD6" //음식점 필터링
                , sort : "accuracy" //정확도 순
                , size : 10} //사이즈 10개까지만
            , headers : {Authorization : "KakaoAK f1b2afc29adbbda05eea78825d075ca9"}
        })
            .done(function(data) {
                var getList = "";

                getList += "<table style='display:inline-block; border-collapse: separate; border-spacing: 0 10px;'>"
                for(var i=0; i<data.documents.length; i++) {
                    getList += "<tr>"
                    getList += "<td>" + data.documents[i].place_name +  "</td>"
                    getList += "<td>" + data.documents[i].phone + "</td>"
                    getList += "<td>" + data.documents[i].category_name + "</td>"
                    getList += "<td>" + data.documents[i].address_name + "</td>"
                    getList += "<td>"
                    getList += "<a href='#'><button style='padding:13px 13px;'>예약하기</button></a>"
                    getList += "<a href='#'><button style='padding:13px 13px;'>리뷰작성</button></a>"
                    getList += "</td>"
                    getList += "</tr>"
                }
                getList += "</table>"

                $("#restList").html("");
                $("#restList").html(getList);
            })
    }

    function enterkey() {
        if (window.event.keyCode == 13) {
            restaurantSearch();
        }
    }
</script>
</html>