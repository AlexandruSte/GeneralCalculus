<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>
    <script src="/resources/scripts/generate-calculus.js"></script>
    <style rel="stylesheet" href="/resources/stylesheets/global.css"></style>
    <style rel="stylesheet" href="/resources/stylesheets/calculus.css"></style>
    <title>Calculus</title>
</head>

<body>

    <div id="calculus" style="visibility: hidden;">
        <p id="calcul"></p>
    </div>
    <button onclick="generate()">Give me some' man</button>

</body>

</html>