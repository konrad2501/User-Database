<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: konradmichalski
  Date: 07/07/2020
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <script type="text/javascript"></script>
    <style type="text/css"></style>
    <title>Callerbot</title>

</head>
<style>
    body{
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

    a:hover, a:active{
        background-color: black;
    }
</style>
<body>
<a href="Menu" type="submit">Cofnij</a>
<form:form modelAttribute="Edit">
    <c:if test="${logged}">
    <h1> VIP </h1>
    <p><a href="#" id="target1">Click to call 1-20</a> (cards will close automatically)</p>
    <p><a href="#" id="target2">Click to call 21-40</a> (cards will close automatically)</p>
    <p><a href="#" id="target3">Click to call 41-60</a> (cards will close automatically)</p>
    <hr>
    <h1> SCALP </h1>
    <p><a href="#" id="target4">Click to call 1-20</a> (cards will close automatically)</p>
    <p><a href="#" id="target5">Click to call 21-40</a> (cards will close automatically)</p>
    <p><a href="#" id="target6">Click to call 41-60</a> (cards will close automatically)</p>

    </c:if>

    <c:if test="${!logged}">
        <c:redirect url="/Login"/>
    </c:if>
</form:form>
</body>
</html>

<script>

    // VIP 1-20
    (function() {
        document.getElementById("target1").onclick = function() {
            var Vphone1 = window.open("http://api.callmebot.com/start.php?source=auth&user=@konrad_michalski&text=Hi+check+the+VIP+group+Mark's+signal&lang=en-US-Standard-B");
            // var Vphone2 = window.open("http://api.callmebot.com/start.php?source=auth&user=@Areckii&text=Hi+check+the+VIP+group+Mark's+signal&lang=en-US-Standard-B");
            // var Vphone3 = window.open("http://api.callmebot.com/start.php?source=auth&user=@mr_gekon&text=Hi+check+the+VIP+group+Mark's+signal&lang=en-US-Standard-B");
            // var Vphone4 = window.open("http://api.callmebot.com/start.php?source=auth&user=+48533921011&text=Hi+check+the+VIP+group+Mark's+signal&lang=en-US-Standard-B");
            // var Vphone5 = window.open("http://api.callmebot.com/start.php?source=auth&user=@AdamPe&text=Hi+check+the+VIP+group+Mark's+signal&lang=en-US-Standard-B");
            // var Vphone6 = window.open("http://api.callmebot.com/start.php?source=auth&user=@Divusinski&text=Hi+check+the+VIP+group+Mark's+signal&lang=en-US-Standard-B");
            //var Vphone7 = window.open("http://api.callmebot.com/start.php?source=auth&user=+48726568114&text=Hi+check+the+VIP+group+Mark's+signal&lang=en-US-Standard-B");
            //var Vphone8 = window.open("http://api.callmebot.com/start.php?source=auth&user=[+48607266464]&text=Hi+check+the+VIP+group+Mark's+signal&lang=en-US-Standard-B");

            document.getElementById('target1').onclick = null;
            document.getElementById('target1').innerHTML = "Thanks for the notification :) ";

            setTimeout(function() {
              Vphone1.close();
              // Vphone2.close();
              // Vphone3.close();
              // Vphone4.close();
              // Vphone5.close();
              // Vphone6.close();
              // Vphone7.close();
              // Vphone8.close();
            }, 500);//0,5 sek
            return false;
        };
    })();

    // VIP 21-40
    // (function() {
    //   document.getElementById("target2").onclick = function() {
    //     var Vphone21 = window.open("http://api.callmebot.com/start.php?source=auth&user=@konrad_michalski&text=This+is+a+test+from+CallMeBot&lang=en-US-Standard-B");
    //     var Vphone22 = window.open("http://api.callmebot.com/start.php?source=auth&user=@konrad_michalski&text=This+is+a+test+from+CallMeBot&lang=en-US-Standard-B");

    //     document.getElementById('target2').onclick = null;
    //     document.getElementById('target2').innerHTML = "Thanks for the notification :) ";
    //   };
    // })();

    // VIP 41-60
    // (function() {
    //   document.getElementById("target3").onclick = function() {
    //     var Vphone41 = window.open("http://api.callmebot.com/start.php?source=auth&user=@konrad_michalski&text=This+is+a+test+from+CallMeBot&lang=en-US-Standard-B");
    //     var Vphone42 = window.open("http://api.callmebot.com/start.php?source=auth&user=@konrad_michalski&text=This+is+a+test+from+CallMeBot&lang=en-US-Standard-B");

    //     document.getElementById('target3').onclick = null;
    //     document.getElementById('target3').innerHTML = "Thanks for the notification :) ";
    //   };
    // })();

    // SCALPING 1-20
    (function() {
        document.getElementById("target4").onclick = function() {
            var Sphone1 = window.open("http://api.callmebot.com/start.php?source=auth&user=@konrad_michalski&text=We+invite+you+to+scalping&lang=en-US-Standard-B");
            var Sphone2 = window.open("http://api.callmebot.com/start.php?source=auth&user=@Areckii&text=We+invite+you+to+scalping&lang=en-US-Standard-B");
            var Sphone3 = window.open("http://api.callmebot.com/start.php?source=auth&user=@mr_gekon&text=We+invite+you+to+scalping&lang=en-US-Standard-B")
            var Sphone4 = window.open("http://api.callmebot.com/start.php?source=auth&user=+48533921011&text=We+invite+you+to+scalping&lang=en-US-Standard-B");
            var Sphone5 = window.open("http://api.callmebot.com/start.php?source=auth&user=@AdamPe&text=We+invite+you+to+scalping&lang=en-US-Standard-B");
            var Sphone6 = window.open("http://api.callmebot.com/start.php?source=auth&user=@Divusinski&text=We+invite+you+to+scalping&lang=en-US-Standard-B");
            //var Sphone7 = window.open("http://api.callmebot.com/start.php?source=auth&user=+48726568114&text=We+invite+you+to+scalping&lang=en-US-Standard-B");
            //var Sphone8 = window.open("http://api.callmebot.com/start.php?source=auth&user=[+48607266464]&text=We+invite+you+to+scalping&lang=en-US-Standard-B");
            Sphone1.close();
            Sphone2.close();
            Sphone3.close();
            Sphone4.close();
            Sphone5.close();
            Sphone6.close();

            document.getElementById('target4').onclick = null;
            document.getElementById('target4').innerHTML = "Thanks for the notification :) ";

        };
    })();

    // SCALPING 21-40
    // (function() {
    //   document.getElementById("target5").onclick = function() {
    //     var Sphone21 = window.open("http://api.callmebot.com/start.php?source=auth&user=@konrad_michalski&text=This+is+a+test+from+CallMeBot&lang=en-US-Standard-B");
    //     var Sphone22 = window.open("http://api.callmebot.com/start.php?source=auth&user=@konrad_michalski&text=This+is+a+test+from+CallMeBot&lang=en-US-Standard-B");

    //     document.getElementById('target5').onclick = null;
    //     document.getElementById('target5').innerHTML = "Thanks for the notification :) ";
    //   };
    // })();

    // SCALPING 41-60
    // (function() {
    //   document.getElementById("target6").onclick = function() {
    //     var Sphone41 = window.open("http://api.callmebot.com/start.php?source=auth&user=@konrad_michalski&text=This+is+a+test+from+CallMeBot&lang=en-US-Standard-B");
    //     var Sphone42 = window.open("http://api.callmebot.com/start.php?source=auth&user=@konrad_michalski&text=This+is+a+test+from+CallMeBot&lang=en-US-Standard-B");

    //     document.getElementById('target6').onclick = null;
    //     document.getElementById('target6').innerHTML = "Thanks for the notification :) ";
    //   };
    // })();

</script>
