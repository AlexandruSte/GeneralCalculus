<%--
  Created by IntelliJ IDEA.
  User: Alexandru
  Date: 30.04.2019
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="/resources/css/global.css" type="text/css"></link>
    <link rel="stylesheet" href="/resources/css/login.css" type="text/css"></link>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>

    <script src="/resources/scripts/general.js"></script>

    <title>Login</title>
</head>
    <jsp:include page="static/navigator.jsp"></jsp:include>

    <c:if test="${not empty error}">
        <p id="register-error" style="text-align: center;color: red;">${error}</p>
    </c:if>

    <form action="/register" method="post">
        <input type="text" name="username" placeholder="Username"/>
        <input type="password" name="password" placeholder="Password"/>
        <input type="password" name="cpassword" placeholder="Confirm password"/>
        <input type="submit" value="Sign up"/>
    </form>

    <!-- <jsp:include page="static/footer.jsp"></jsp:include> -->
<body>
</html>
