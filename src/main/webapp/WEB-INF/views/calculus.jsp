<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <jsp:include page="static/includes.jsp"></jsp:include>

    <link rel="stylesheet" href="/resources/css/calculus.css" type="text/css"></link>

    <script src="/resources/scripts/generate-calculus.js"></script>

    <title>Calculus</title>
</head>

<jsp:include page="static/above-line.jsp"></jsp:include>

<body>
    <jsp:include page="static/navigator.jsp"></jsp:include>
    <div class="calcule">

        <div id="calculus">
            <p id="calcul"></p>
            <input name="result" type="text" placeholder="Result" onKeyPress="enterpressalert(event)" />
        </div>

        <div id="generation">
            <select id="difficultyType">
                <option value="novice">Novice</option>
                <option value="medior">Medior</option>
                <option value="expert" selected>Expert</option>
            </select>
            <select id="operationType">
                <option value="addition">Additions</option>
                <option value="subtraction">Subtractions</option>
                <option value="multiplication" selected>Multiplications</option>
                <option value="division">Divisions</option>
            </select>
            <input id="ops" type="number" placeholder="Number of operations" />
            <button onclick="start()">Give me some' man</button>
        </div>
    </div>
    <jsp:include page="static/footer.jsp"></jsp:include>
</body>

</html>