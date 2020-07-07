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
    <title>Usun uzytkownika</title>
</head>
<style>
    .form{
        text-align: center;
        padding-top: 100px;
    }
    h1{
        text-align: center;
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
</style>
<body>
<form:form modelAttribute="Delete">
    <c:if test="${logged}">
<div class="form">
    <a href="Menu" type="submit">Cofnij</a><h2>Podaj nick użytkownika do usunięcia : </h2><br>
    <form:input path="nick"/>
    <input type="submit" value="Usuń użytkownika" id="deleteUser"/>
</div>
</c:if>

<c:if test="${!logged}">
    <c:redirect url="/Login"/>
</c:if>
</form:form>
</body>
</html>
