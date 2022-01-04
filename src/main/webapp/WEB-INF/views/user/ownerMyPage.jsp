<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <script src="script/validate.js"></script>
  <title>Owner MyPage</title>
</head>
<body>
<h1>사장님 페이지</h1>
<input type="button" value="내 가게 리스트"> -> 가게 보기(여러개일 수 있음, table 처리, 누르면 예약내역, 수정가능) <br><br>
<input type="button" value="내 가게 등록하기" onclick="location.href='searchPage'" > -> 지도로 검색해서 등록 <br><br>
<input type="button" value="회원정보 수정하기"> -> userMyPage와 연결됨<br><br>


</body>
</html>