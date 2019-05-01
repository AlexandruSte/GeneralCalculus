<%--
  Created by IntelliJ IDEA.
  User: Alexandru
  Date: 01.05.2019
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="static/includes.jsp"></jsp:include>

    <title>Progress</title>
</head>

<jsp:include page="static/above-line.jsp"></jsp:include>

<body>
    <jsp:include page="static/navigator.jsp"></jsp:include>

    <% if (session.getAttribute("user") == null) {  %>
    <h3>You have to login first ---> <a href="/login">Login</a> or to register ---> <a href="/register">Register</a></h3>
    <% } else { %>

    <% } %>

<!-- <jsp:include page="static/footer.jsp"></jsp:include> -->
</body>
</html>
