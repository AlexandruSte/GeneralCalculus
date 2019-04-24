<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="/resources/stylesheets/calculus.css" type="text/css"></link>
    <link rel="stylesheet" href="/resources/stylesheets/global.css" type="text/css"></link>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="/resources/scripts/generate-calculus.js"></script>

    <title>Calculus</title>
</head>

<body>
    <jsp:include page="static/navigator.jsp"></jsp:include>
    <div class="calcule">

        <div id="calculus">
            <p id="calcul"></p>
            <input name="result" type="text" placeholder="Result" />
            <button id="submitBtn" onclick="send()">Submit</button>
        </div>

        <div id="generation">
            <select id="operationType">
                <option value="addition">Additions</option>
                <option value="subtraction">Subtractions</option>
                <option value="multiplication" selected>Multiplications</option>
                <option value="division">Divisions</option>
            </select>
            <button onclick="start()">Give me some' man</button>
        </div>
    </div>
    <jsp:include page="static/footer.jsp"></jsp:include>
</body>

</html>