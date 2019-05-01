<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Alexandru
  Date: 24.04.2019
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<header>
    <img id="logo" src="/resources/img/logo.png" alt="logo" onclick="logo_click()" />

    <% if (session.getAttribute("user") == null) { %>
        <nav>
            <a href="/login">Login</a>
            <a href="/register">Sign up</a>
        </nav>
    <% }
    else {%>
        <nav>
            <a href="/calculus">Calculus</a>
            <a href="/dashboard">Dashboard</a>
            <a href="/logout">Log out</a>
        </nav>
    <% } %>

</header>