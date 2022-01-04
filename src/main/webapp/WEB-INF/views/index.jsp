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
    <script src="script/review.js"></script>
    <title>INDEX</title>
</head>
<body>
<%
    session.setAttribute("log","apple");
%>
Index Page
<input type="button" onclick="location.href='/list'" value="리뷰보러가기">
<input type="button" onclick="location.href='ownerPage'" value="사장님페이지">
<div class="wrap">
    <header>
        <h1>INDEX</h1>
    </header>
    <main>
        <div id="btn">
            <input type="button" id="join" value="join" onclick="location.href='/join'">
            <input type="button" id="login" value="login" onclick="location.href='/login'">
            <input type="button" id="userMyPage" value="userMyPage" onclick="location.href='/userMyPage'">
        </div>
    </main>
    <nav></nav>
    <aside></aside>
    <footer></footer>

</div>
</body>
</html>