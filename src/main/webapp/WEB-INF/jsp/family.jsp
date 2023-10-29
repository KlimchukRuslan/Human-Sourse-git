<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>Family</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>
<body>
<div style="text-align: center">
    <div style="text-align: center">
        <h3>${pageContext.request.userPrincipal.name}</h3>
    </div>

    <sec:authorize access="!isAuthenticated()">
        <h4><a href="/login">Вхід</a></h4>
        <h4><a href="/registration">Зареєструватись</a></h4>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <h4><a href="/logout">Вийти</a></h4>
    </sec:authorize>
    <h4><a href="/news">Добавити учасника дерева(потрібна регістрація)</a></h4>
    <h4><a href="/">Повернутись на головну сторінку</a></h4>
</div>
</body>
</html>