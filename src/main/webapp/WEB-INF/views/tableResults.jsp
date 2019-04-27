<%--
  Created by IntelliJ IDEA.
  User: Alexandru
  Date: 4/27/2019
  Time: 7:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h3>Last results</h3>
<table id="first-table">
    <tr>
        <th>Date</th>
        <th>Type</th>
        <th>Operations</th>
        <th>Correct answers</th>
        <th>Total time</th>
        <th>Difficulty</th>
    </tr>
    <c:forEach items="${scores}" var="score">
        <tr>
            <td>${score.getDate()}</td>
            <td>${score.getOperation()}</td>
            <td>${score.getNrOfOperations()}</td>
            <td>${score.getCorrectResults()}</td>
            <td>${score.getTime()}</td>
            <td>${score.getDifficulty()}</td>
        </tr>
    </c:forEach>
</table>

<h3>Best results</h3>
<table id="second-table">
    <tr>
        <th>Date</th>
        <th>Type</th>
        <th>Operations</th>
        <th>Correct answers</th>
        <th>Total time</th>
        <th>Difficulty</th>
    </tr>
    <c:forEach items="${bestScores}" var="score">
        <tr>
            <td>${score.getDate()}</td>
            <td>${score.getOperation()}</td>
            <td>${score.getNrOfOperations()}</td>
            <td>${score.getCorrectResults()}</td>
            <td>${score.getTime()}</td>
            <td>${score.getDifficulty()}</td>
        </tr>
    </c:forEach>
</table>