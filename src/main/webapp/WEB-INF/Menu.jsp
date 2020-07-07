<%--
  Created by IntelliJ IDEA.
  User: konradmichalski
  Date: 20/05/2020
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script src="webjars/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript"></script>
    <title>Menu</title>
</head>
<body>

<style>
.menu{
        text-align: center;
        width: 100%;
        height: 100%;
        background-color: white;
        padding-top: 100px;
    }

a{
    width: 200px;
    height: 20px;
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
<c:if test="${logged == true && id != 1}">
<div class="menu">
    <h1>Menu</h1>
    <table align="center">
            <br><br><tr>
                <a href="New" type="button" id="NewUser">Dodaj użytkownika</a>
            </tr><br><br>
            <tr>
                <a href="ListOfUsers" type="button" id="EditUser">Edytuj użytkowników</a>
            </tr><br><br>
            <tr>
                <a href="Delete" type="button" id="DeleteUser">Usuń użytkownika</a>
            </tr><br><br>
            <tr>
                <a href="View" type="button" id="ViewUser">Wyświetl użytkowników</a>
            </tr><br><br>
            <tr>
                <a href="Search" type="button" id="SearchTransaction">Wyszukaj transkacje</a>
            </tr><br><br>
        <tr>
            <a href="Call" type="button" id="calls">CallBot</a>
        </tr><br><br>
        </table>
</div>
</c:if>

<c:if test="${logged && id == 1}">
    <div class="menu">
    <h1>Menu</h1>
    <table align="center">
    <br><br><tr>
    <a href="Call" type="button" id="callm">CallBot</a>
    </tr><br><br>
    </table>
    </div>
</c:if>

<c:if test="${!logged}">
    <c:redirect url="/Login"/>
</c:if>
</body>
</html>
