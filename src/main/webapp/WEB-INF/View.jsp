<%--
  Created by IntelliJ IDEA.
  User: konradmichalski
  Date: 06/07/2020
  Time: 00:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Wyswietl uzytkownikow</title>
</head>
<style>
    body{
        width: 100%;
        height: 100%;
        overflow: scroll;
        position: relative;
    }
    a{
        width: 50px;
        height: 12px;
    }
    a:link, a:visited {
        background-color: #f44336;
        color: white;
        padding: 14px 25px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
    }
    a:hover, a:active {
        background-color: black;
    }
    td, th {
        border: 1px solid black;
        padding: 2px;
        padding-left: 5px;
        padding-right: 5px;
    }
    table{
        border-collapse: collapse;
        margin: auto;
    }
    .tab1{
        width:33%;
        float:left;
    }
    .tab2{
        width:33%;
        float:left;
    }
    .tab3{
        width:33%;
        float:right;
    }
    .main{
        text-align: center;
    }
    h1,h2 {
        text-align: center;
    }
</style>
<body>
<c:if test="${logged}">
<div class="main">
    <a href="Menu" type="submit">Cofnij</a> <h1> Lista użytkowników</h1>
    <div class="tab1">
    <table>
        <h2>Pakiet 1</h2>

        <tr>
            <th> ID </th><th> Imię </th> <th> Nazwisko </th> <th> Nick </th> <th> Data ważności </th> <th> Uwagi</th>
        </tr>
        <c:forEach var="users" items="${users}">
            <c:if test="${users.pakiet=='Opcja 1'}">
                <tr>
                    <td>
                            ${users.id_user}
                    </td>
                    <td>
                            ${users.name}
                    </td>

                    <td>
                            ${users.surname}
                    </td>

                    <td>
                            ${users.nick}
                    </td>

                    <td>
                            ${users.date}
                    </td>
                    <td>
                            ${users.comments}
                    </td>
                </tr>
            </c:if>
        </c:forEach>
    </table>
    </div>
    <div class="tab2">
    <table>
        <h2>Pakiet 2</h2>

        <tr>
            <th> ID </th><th> Imię </th> <th> Nazwisko </th> <th> Nick </th> <th> Data ważności </th> <th> Uwagi</th>
        </tr>
        <c:forEach var="users" items="${users}">
            <c:if test="${users.pakiet=='Opcja 2'}">
                <tr>
                    <td>
                            ${users.id_user}
                    </td>
                    <td>
                            ${users.name}
                    </td>

                    <td>
                            ${users.surname}
                    </td>

                    <td>
                            ${users.nick}
                    </td>

                    <td>
                            ${users.date}
                    </td>
                    <td>
                            ${users.comments}
                    </td>
                </tr>
            </c:if>
        </c:forEach>
    </table>
    </div>
    <div class="tab3">
    <table>
        <h2>Pakiet 3</h2>
        <tr>
            <th> ID </th><th> Imię </th> <th> Nazwisko </th> <th> Nick </th> <th> Data ważności </th> <th> Uwagi</th>
        </tr>
        <c:forEach var="users" items="${users}">
            <c:if test="${users.pakiet=='Opcja 3'}">
                <tr>
                    <td>
                            ${users.id_user}
                    </td>
                    <td>
                            ${users.name}
                    </td>

                    <td>
                            ${users.surname}
                    </td>

                    <td>
                            ${users.nick}
                    </td>

                    <td>
                            ${users.date}
                    </td>
                    <td>
                            ${users.comments}
                    </td>
                </tr>
            </c:if>
        </c:forEach>
    </table>
    </div>
</c:if>
<%--    <c:if test="${!logged}">--%>
<%--        <c:redirect url="/Login"/>--%>
<%--    </c:if>--%>
</div>
</body>
</html>
