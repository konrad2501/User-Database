<%--
  Created by IntelliJ IDEA.
  User: konradmichalski
  Date: 05/07/2020
  Time: 23:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Dodaj uzytkownika</title>
</head>
<style>
    .form{
        text-align: center;
        padding-top: 100px;
        overflow: scroll;
        position: relative;
    }
    h1,h2 {
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
<form:form modelAttribute="New">
    <c:if test="${logged}">

    <div class="form" >
        <a href="Menu" type="submit">Cofnij</a><h1>Dodaj użytkownika</h1>
    <label><b>Imię</b> : </label><br>
        <form:input path="name" id="name"/>
    <br><br>
    <label><b>Nazwisko</b> : </label><br>
        <form:input path="surname" id="surname"/>
    <br><br>
    <label><b>Nick</b> : </label><br>
        <form:input path="nick" id="nick"/>
    <br><br>
    <label><b>Pakiet </b> : </label><br>
<%--        <form:input path="pakiet" id="pakiet"/>--%>
        <form:select path="pakiet">
            <form:option value="Opcja 1">Opcja 1</form:option>
            <form:option value="Opcja 2">Opcja 2</form:option>
            <form:option value="Opcja 3">Opcja 3</form:option>
        </form:select>
        <br><br>
        <label><b>Data(rrrr-mm-dd) </b> : </label><br>
        <form:input path="date" id="date"/>
        <br><br>
        <label><b>Uwagi</b> : </label><br>
        <form:input path="comments" id="comments"/>
        <br><br>
        <input type="submit" value="Dodaj użytkownika" id="newUser"/>

</div>
    </c:if>

    <c:if test="${!logged}">
        <c:redirect url="/Login"/>
    </c:if>
</form:form>

</body>
</html>
