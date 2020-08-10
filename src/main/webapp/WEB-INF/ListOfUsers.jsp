<%--
  Created by IntelliJ IDEA.
  User: konradmichalski
  Date: 06/07/2020
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Lista uzytkownikow</title>
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
    td, th { border: 1px solid black;
    padding-left: 5px; padding-right: 5px}
    table{
        text-align: center;
        border-collapse: collapse;
    }
    .tab1{
        width:100%;
        text-align: center;
    }
    .main{
        text-align: center;
    }
</style>
<body>
<c:if test="${logged}">
    <div class="main">
    <a href="Menu" type="submit">Cofnij</a> <h1> Lista użytkowników</h1>
    <div class="tab1">
    <table style="margin: auto;">
    <c:forEach var="users" items="${users}">
            <tr>
                <td>
                       ID: ${users.id_user}
                </td>
                <td>
                       Imię: ${users.name}
                </td>

                <td>
                       Nazwisko: ${users.surname}
                </td>

                <td>
                       Nick: ${users.nick}
                </td>

                <td>
                       Pakiet: ${users.pakiet}
                </td>

                <td>
                            Data: ${users.date}
                </td>
                <td>
                        Uwagi: ${users.comments}
                </td>
                <td>
                    <a type="button" style="padding: 14px 25px; background-color: white; cursor: pointer; color: #f44336;" href="Edit/${users.id_user}">Edytuj</a>
                </td>
            </tr>
    </c:forEach>
    </table>
    </div>
    </div>
        </c:if>
<%--        <c:if test="${!logged}">--%>
<%--            <c:redirect url="/Login"/>--%>
<%--        </c:if>--%>
</body>
</html>
<%--<script>--%>
<%--    function funDate(button) {--%>
<%--        var date = new Date(button.name);--%>
<%--        var newdate = new Date(date);--%>
<%--        var nd = new Date(newdate);--%>

<%--        var today = new Date();--%>
<%--        var weekday = today.getUTCDay();--%>
<%--        var sub = nd.getUTCDay();--%>

<%--        document.getElementById("end").innerHTML= (sub-weekday) + " days !";--%>

<%--        if((weekday+3 == sub && weekday+2 == sub && weekday+1 == sub && weekday == sub))--%>
<%--        {--%>
<%--            document.getElementById("end").innerHTML= "<span style='color: red;'> Zostało mniej niż 3 dni</span>";--%>
<%--        }--%>
<%--    }--%>

<%--</script>--%>