<%-- 
    Document   : success
    Created on : 21-Nov-2014, 22:10:10
    Author     : SHASHWAT
--%>

<%@include file="SessionManager.jsp" %>
<%@include file="CacheManager.jsp"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


    <head>
        <title> Human machine interface </title>
        <link rel="stylesheet" href="style/style.css">
        <link href="style/tabmenu.css" rel="stylesheet" type="text/css" />
        <script src="tabmenu.js" type="text/javascript"></script>
        <script>
            function startTime() {
                var today=new Date();
                var h=today.getHours();
                var m=today.getMinutes();
                var s=today.getSeconds();
                m = checkTime(m);
                s = checkTime(s);
                document.getElementById('txt').innerHTML = h+":"+m+":"+s;
                var t = setTimeout(function(){startTime()},500);
            }

            function checkTime(i) {
                if (i<10) {i = "0" + i};  // add zero in front of numbers < 10
                return i;
            }
        </script>
    </head>

    <body onload="startTime()">




    <center>

        <font size="5" color="WHITE"><B><marquee direction="right" style="background:blue" width="100%" height="25">REAL TIME WATER DISTRIBUTION SYSTEM DASHBOARD</marquee></font></B>
        </font>
    </center>

    <body1 style="padding:0px 0px;">
        <ul id="tabmenu">
            <li>
                TAG CONFIGURATOR
                <ul>
                    <li><a href="Tele_indication.jsp">TELE INDICATION</a>

                    </li>
                    <li><a href="Tele_measurand.jsp">TELE MEASURAND</a>



                </ul>
            </li>
            <li>
                MONITOR SCREEN
                <ul>
                    <li><a href="wtp.jsp">WATER TREATMENT PLANT</a>

                    </li>
                    <li><a href="wdsys.jsp">WATER DISTRIBUTION CENTER</a>
                    </li>

                </ul>
            </li>
            <li>
                <a href="Alarm.jsp">ALARM</a>

            </li>
            <li><a href="Report.jsp">REPORT</a></li>
            <li><a href="Report.jsp">TREND</a></li>
            <li><a href="LogoutHandler">LOGOUT</a></li>
        </ul>

    </body1>
    <font face="Arial"  size=5 color="red" >
    <div class="bottom" id="txt" ></div>
    </font>

    

    </body>

</html>