<%--
  Created by IntelliJ IDEA.
  User: konradmichalski
  Date: 12/03/2020
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Login</title>
</head>
<body>
<style>
    body {
        text-align: center;
        margin-top:200px;
        padding:0;
        width: 100%;
        height: 100%;
        background-color: white;
    }
</style>
<h1>Login</h1>
<form:form modelAttribute="Login">
    <p class="login">
        <table border-collapse="2px" align="center"><tr>
        <div class="nick">
            <label>Nick: </label>
            <form:input path="nick" id="nickInput"/>
        </div>
            </tr>
            <br>
            <tr>
        <div class="password">
            <label>Hasło: </label>
            <form:input type="password" path="password" id="passwordInput"/>
        </div>
            </tr>
</table>
        <br>
        <input type="submit" value="Login" onclick="myFunction()">
    <div id="text">
    </div>
</form:form>
</body>
</html>

<script>

    function myFunction() {
    document.getElementById("text").innerHTML = "Checking ....";
    document.getElementById("text").children.style.display = 'block';
    }

</script>

