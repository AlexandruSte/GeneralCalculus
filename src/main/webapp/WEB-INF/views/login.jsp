<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Alexandru
  Date: 4/27/2019
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="static/includes.jsp"></jsp:include>

    <link rel="stylesheet" href="/resources/css/login.css" type="text/css"></link>
    <title>Login</title>
</head>

<jsp:include page="static/above-line.jsp"></jsp:include>

<body>
    <jsp:include page="static/navigator.jsp"></jsp:include>

    <c:if test="${not empty error}">
        <p id="register-error" style="text-align: center;color: red;">${error}</p>
    </c:if>

    <form action="/login" method="post">
        <input type="text" name="username" placeholder="username" autofocus/>
        <input type="password" name="password" placeholder="password"/>
        <input type="submit" value="Login"/>
    </form>

    <!-- <jsp:include page="static/footer.jsp"></jsp:include> -->
</body>
</html>
