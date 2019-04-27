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
    <meta charset="UTF-8">

    <link rel="stylesheet" href="/resources/stylesheets/global.css" type="text/css"></link>
    <link rel="stylesheet" href="/resources/stylesheets/login.css" type="text/css"></link>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>

    <title>Login</title>
</head>
    <jsp:include page="static/navigator.jsp"></jsp:include>

    <form action="/login" method="post">
        <div><label> User Name : <input type="text" name="username" placeholder="username"/> </label></div>
        <div><label> Password: <input type="password" name="password" placeholder="password"/> </label></div>
        <div><input type="submit" value="Login"/></div>
    </form>

    <!-- <jsp:include page="static/footer.jsp"></jsp:include> -->
<body>

</body>
</html>
