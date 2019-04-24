<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: Alexandru
  Date: 24.04.2019
  Time: 00:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <link rel="stylesheet" href="/resources/stylesheets/global.css" type="text/css"></link>
    <link rel="stylesheet" href="/resources/stylesheets/success.css" type="text/css"></link>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>
    <title>Results</title>
</head>
<body>
    <jsp:include page="static/navigator.jsp"></jsp:include>
    <c:choose>
        <c:when test="${ok=='1'}">
            <p>Congratulations, you did ${correct} correct responses from ${responses} questions!</p>
            <br />
        </c:when>
        <c:otherwise>
            <p>Hol' up...</p>
            <br />
        </c:otherwise>
    </c:choose>

    <p>Let's go back and resolve some more!<a href="/">Go</a></p>
</body>
</html>