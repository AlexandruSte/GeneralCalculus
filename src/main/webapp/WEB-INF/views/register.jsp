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

    <form action="/register" method="post">
        <input type="text" name="username" placeholder="Username" autofocus/>
        <input type="password" name="password" placeholder="Password"/>
        <input type="password" name="cpassword" placeholder="Confirm password"/>
        <input type="submit" value="Sign up"/>
    </form>

    <!-- <jsp:include page="static/footer.jsp"></jsp:include> -->
</body>
</html>
