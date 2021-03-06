<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: Alexandru
  Date: 24.04.2019
  Time: 00:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <jsp:include page="static/includes.jsp"/>

    <link rel="stylesheet" href="/resources/css/success.css" type="text/css"/>

    <title>Results</title>
</head>

<jsp:include page="static/above-line.jsp"/>

<body>
<jsp:include page="static/navigator.jsp"/>
<c:choose>
    <c:when test="${ok=='1'}">
        <p>Congratulations, you did ${correct} correct responses from ${responses} questions!</p>
        <br/>
    </c:when>
    <c:otherwise>
        <p>Hol' up...</p>
        <p>You will be sent here after you complete some calculus, not on your on peace of mind.</p>
        <br/>
    </c:otherwise>
</c:choose>

<p>Operations</p>
<ol>
    <c:forEach items="${answers}" var="score">
        <li>Your answer was ${score.split(":")[0]} and the correct one was ${score.split(":")[1]}.</li>
    </c:forEach>
</ol>

<br>
<p>Let's go back and resolve some more! <a href="calculus/">Go</a></p>

<jsp:include page="static/footer.jsp"/>
</body>
</html>
