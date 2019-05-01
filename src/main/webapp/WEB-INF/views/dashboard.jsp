<%--
  Created by IntelliJ IDEA.
  User: Alexandru
  Date: 4/27/2019
  Time: 4:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="static/includes.jsp"></jsp:include>

    <script src="/resources/scripts/dashboard.js"></script>

    <link rel="stylesheet" href="/resources/css/dashboard.css" type="text/css"></link>

    <title>Dashboard</title>
</head>

<body>
    <jsp:include page="static/navigator.jsp"></jsp:include>

    <div id="wrapper">
        <aside>
            <ul id="operations">
                <li><p onclick="showTable('additions')">additions</p></li>
                <li><p onclick="showTable('multiplications')">multiplications</p></li>
                <li><p onclick="showTable('subtractions')">subtractions</p></li>
                <li><p onclick="showTable('divisions')">divisions</p></li>
            </ul>
        </aside>

        <div id="tables"></div>
    </div>

    <!-- <jsp:include page="static/footer.jsp"></jsp:include> -->
</body>
</html>
