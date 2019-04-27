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
    <meta charset="UTF-8">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="/resources/scripts/dashboard.js"></script>

    <link rel="stylesheet" href="/resources/stylesheets/global.css" type="text/css"></link>
    <link rel="stylesheet" href="/resources/stylesheets/dashboard.css" type="text/css"></link>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' rel='stylesheet' type='text/css'>

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

        <p id="yes">Salut</p>

        <!--<div id="tables">
            <div id="additions">
                <table>
                    <tr>
                        <th>Date</th>
                        <th>Operation</th>
                        <th>Nr corecte</th>
                        <th>timp</th>
                    </tr>
                    <tr>
                        <td>02/04/2019</td>
                        <td>Addition</td>
                        <td>20</td>
                        <td>80s</td>
                    </tr>
                </table>

                <table>
                    <tr>
                        <th>Date</th>
                        <th>Operation</th>
                        <th>Nr corecte</th>
                        <th>timp</th>
                    </tr>
                    <tr>
                        <td>02/04/2019</td>
                        <td>Addition</td>
                        <td>20</td>
                        <td>80s</td>
                    </tr>
                </table>
            </div>
            <div id="multiplications">
                <table>
                    <tr>
                        <th>Date</th>
                        <th>Operation</th>
                        <th>Nr corecte</th>
                        <th>timp</th>
                    </tr>
                    <tr>
                        <td>02/04/2019</td>
                        <td>Multiplication</td>
                        <td>20</td>
                        <td>80s</td>
                    </tr>
                </table>

                <table>
                    <tr>
                        <th>Date</th>
                        <th>Operation</th>
                        <th>Nr corecte</th>
                        <th>timp</th>
                    </tr>
                    <tr>
                        <td>02/04/2019</td>
                        <td>Multiplication</td>
                        <td>20</td>
                        <td>80s</td>
                    </tr>
                </table>
            </div>
            <div id="subtractions">
                <table>
                    <tr>
                        <th>Date</th>
                        <th>Operation</th>
                        <th>Nr corecte</th>
                        <th>timp</th>
                    </tr>
                    <tr>
                        <td>02/04/2019</td>
                        <td>Subtraction</td>
                        <td>20</td>
                        <td>80s</td>
                    </tr>
                </table>

                <table>
                    <tr>
                        <th>Date</th>
                        <th>Operation</th>
                        <th>Nr corecte</th>
                        <th>timp</th>
                    </tr>
                    <tr>
                        <td>02/04/2019</td>
                        <td>Subtraction</td>
                        <td>20</td>
                        <td>80s</td>
                    </tr>
                </table>
            </div>
            <div id="divisions">
                <table>
                    <tr>
                        <th>Date</th>
                        <th>Operation</th>
                        <th>Nr corecte</th>
                        <th>timp</th>
                    </tr>
                    <tr>
                        <td>02/04/2019</td>
                        <td>Division</td>
                        <td>20</td>
                        <td>80s</td>
                    </tr>
                </table>

                <table>
                    <tr>
                        <th>Date</th>
                        <th>Operation</th>
                        <th>Nr corecte</th>
                        <th>timp</th>
                    </tr>
                    <tr>
                        <td>02/04/2019</td>
                        <td>Division</td>
                        <td>20</td>
                        <td>80s</td>
                    </tr>
                </table>
            </div>
        </div>
    </div> -->

    <jsp:include page="static/footer.jsp"></jsp:include>
</body>
</html>
