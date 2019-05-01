<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Alexandru
  Date: 30.04.2019
  Time: 09:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="static/includes.jsp"></jsp:include>

    <title>General Calculus</title>
</head>
<body>
    <jsp:include page="static/navigator.jsp"></jsp:include>

    <% if (session.getAttribute("user") != null) {  %>
        <h2>Welcome to the official application <c:out value="${sessionScope.user.username}"/></h2>
    <% } %>

    <% if (session.getAttribute("acccreated") != null) {  %>
        <p><c:out value="${sessionScope.acccreated}"/></p>
    <% } %>

    <% if (session.getAttribute("logout") != null) {  %>
        <p> <c:out value="${sessionScope.logout}"/> </p>
    <% } %>

    <p>Ooooooo, you're the user I've heard so much about, user ${id}</p>

    <p>Be careful tho, because this session is only active for  ${time} seconds</p>

    <p>And you only have left ${active} seconds</p>
</body>
</html>
