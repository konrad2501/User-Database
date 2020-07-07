<%--
  Created by IntelliJ IDEA.
  User: konradmichalski
  Date: 06/07/2020
  Time: 00:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>

<head>
    <title>Wyszukaj transakcje</title>
    <script type="text/javascript"></script>
    <meta charset="UTF-8">

</head>
<style>
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
    .form
    {
        text-align: center;
    }
</style>
<body>
<form:form modelAttribute="Search">
    <c:if test="${logged}">
        <div class="form">
            <a href="Menu" type="submit">Cofnij</a><h1>Wyszukaj transakcję</h1>
            <input type="text" id="txid" placeholder="Podaj Hash/TxId" style="width: 500px"><br><br>
            <input type="button" name="Search_BTC" value="Wpłata BTC" style=" cursor: pointer; font-weight: bold; font-size: 14px;" onclick="searchB()">
            <input type="button" name="Search_Eth" value="Wpłata ETH" style=" cursor: pointer; font-weight: bold; font-size: 14px;" onclick="searchE()">
            <br><hr><br>
            <div id="output1" style="font-weight: bold; font-size: 20px"></div>
            <br>
            <div id="output2" style="font-weight: bold; font-size: 20px"></div>
        </div>
    </c:if>
    <c:if test="${!logged}">
        <c:redirect url="/Login"/>
    </c:if>
</form:form>
</body>
</html>
<script>
    const bitcoin = "https://blockchain.info/unspent?active=18u39tgMm4o3jYLCw9pVC7cPQGsPUWpS5";
    const ethereum = "https://api.blockchair.com/ethereum/dashboards/address/0xfa51F61d51e37971c7E5663812D83c1D9Fe9682b";
    var iftrue;
    async function searchB()
    {
        const response = await fetch(bitcoin);
        const data = await response.json();
        //console.log(JSON.stringify(data));
        var found = (JSON.stringify(data));
        var hash = document.getElementById('txid').value;
        var bool = found.includes(hash);
        if(bool == true && hash.length > 45)
        {
            document.getElementById("output1").innerHTML = "<span style='color: green;'> Znaleziono wpłatę BTC.</span>";
        }
        else
            document.getElementById("output1").innerHTML = "<span style='color: red;'> Transakcja BTC nie została znaleziona..</span>";
    }

    //setTimeout(searchB, 5000);

    async function searchE()
    {
        const response = await fetch(ethereum);
        const data = await response.json();
        //console.log(JSON.stringify(data));
        var found = (JSON.stringify(data));
        var hash = document.getElementById('txid').value;
        var bool = found.includes(hash);
        if(bool == true && hash.length > 45)
        {
            document.getElementById("output2").innerHTML = "<span style='color: green;'> Znaleziono wpłatę ETH.</span>";
        }
        else
            document.getElementById("output2").innerHTML = "<span style='color: red;'> Transakcja ETH nie została znaleziona..</span>";
    }

    //setTimeout(searchE, 5000);

</script>
