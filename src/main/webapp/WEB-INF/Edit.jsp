<%--
  Created by IntelliJ IDEA.
  User: konradmichalski
  Date: 06/07/2020
  Time: 00:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Edytuj uzytkownika</title>
</head>
<style>
    td{
        padding: 2px;
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
    .form
    {
        text-align: center;
    }

    h1{
        text-align: center;
    }

    body{
        text-align: center;
    }
</style>
<body>
<a href="../ListOfUsers" type="submit">Cofnij</a><h1>Edytuj użytkownika</h1>
<form:form modelAttribute="Edit">
    <c:if test="${logged}">

        <div class="form" >
            <table style="margin: auto">
                <tr>
                    <td>
                        Imię:
                    </td>
                    <td>
                        <form:input path="name" style="padding: 7px 15px; font-size:12px;" value="${users.name}"/>
                    </td>
                    <td>
                        Nazwisko:
                    </td>
                    <td>
                        <form:input path="surname" style="padding: 7px 15px; font-size:12px;" value="${users.surname}"/>
                    </td>
                    <td>
                        Nick:
                    </td>
                    <td>
                        <form:input path="nick" style="padding: 7px 15px; font-size:12px;" value="${users.nick}"/>
                    </td>
                    <td>
                        Pakiet:
                    </td>
                    <td>
<%--                        <form:input path="pakiet" style="padding: 14px 25px" value="${users.pakiet}"/>--%>
                        <form:select path="pakiet" style="padding: 7px 15px; font-size:12px;" value="${users.pakiet}">
                            <form:option value="Opcja 1">Opcja 1</form:option>
                            <form:option value="Opcja 2">Opcja 2</form:option>
                            <form:option value="Opcja 3">Opcja 3</form:option>
                        </form:select>
                    </td>
                    <td>
                        Data:
                    </td>
                    <td>
                        <form:input path="date" type="text" style="padding: 7px 15px; font-size:12px;" id="newdata" value="${users.date}"/>
                        <input type="button" value="Przedłuż" name="${users.date}" onclick="funDate(this)"/>
                    </td>
                    <td>
                        Uwagi:
                    </td>
                    <td>
                        <form:input path="comments" style="padding: 7px 15px; font-size:12px;" value="${users.comments}"/>
                    </td>

                </tr>
            </table>
            <br><br>
            <input type="submit" value="Zapisz" id="save"/>
        </div>
    </c:if>

    <c:if test="${!logged}">
        <c:redirect url="/Login"/>
    </c:if>
</form:form>

</body>
</html>
<script>
    function funDate(button) {
        var date = new Date(button.name);
        var newdate = new Date(date);

        newdate.setDate(newdate.getDate()+31);

        var nd = new Date(newdate);

        const ye = new Intl.DateTimeFormat('en', { year: 'numeric' }).format(nd);
        const mo = new Intl.DateTimeFormat('en', { month: '2-digit' }).format(nd);
        const da = new Intl.DateTimeFormat('en', { day: '2-digit' }).format(nd);

        document.getElementById("newdata").value = ye+"-"+mo+"-"+da;
    }

</script>
