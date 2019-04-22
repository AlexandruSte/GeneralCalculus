<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
    <meta charset="UTF-8">
    <script src="/resources/scripts/generate-calculus.js"></script>
    <title>Calculus</title>
</head>

<body>

    <div id="calculus" style="visibility: hidden;">
        <p id="calcul"></p>
    </div>
    <button onclick="generate()">Give me some' man</button>

</body>

</html>