
<%@include file="SessionManager.jsp" %>
<%@include file="CacheManager.jsp"%>

<html>

    <head>
        <title>Tag configuration</title>
        <jsp:include page="welcome.jsp"/>
        <link rel="stylesheet" href="style/page1.css" type="text/css"/>
        <script>
            function viewMeasurand()
            {
                var xmlHttpRequest;
                if(window.XMLHttpRequest)
                {
                    xmlHttpRequest=new XMLHttpRequest();
                }
                else
                {
                    xmLHttpRequest= new ActiveXObject("Microsoft.XMLHTTP");
                }
                var tag_id=document.getElementById("tag_id").value;
        
        
                xmlHttpRequest.open("GET","ViewMea.xml?tag_id="+tag_id,true);
                xmlHttpRequest.send(null);
        
                xmlHttpRequest.onreadystatechange=function()
                { 
                    if(xmlHttpRequest.readyState ==4 && xmlHttpRequest.status==200)
                    {
                        parseXML(xmlHttpRequest.responseXML);
                    }
                }
            }
            function parseXML()
            {   
                document.getElementById("alarm").checked=false;
                document.getElementById("event").checked=false;
                document.getElementById("pressure").checked=false;
                document.getElementById("inlet").checked=false;
                document.getElementById("outlet").checked=false;
                document.getElementById("chlorine").checked=false;
        
                var xml=arguments[0];
                var tagId=xml.getElementsByTagName("tag-id");
                var tagName=xml.getElementsByTagName("tag-name");
                var parameter=xml.getElementsByTagName("parameter");
                var lowlevel=xml.getElementsByTagName("low-level");
                var highlevel=xml.getElementsByTagName("high-level");
                var tagType=xml.getElementsByTagName("tag-type");
                var reserviourId=xml.getElementsByTagName("reserviour-id");
                var location=xml.getElementsByTagName("location");
                var alarm=xml.getElementsByTagName("alarm");
                var event=xml.getElementsByTagName("event");
       
                document.getElementById("tag_id").value=tagId[0].firstChild.nodeValue;
                document.getElementById("tag_name").value=tagName[0].firstChild.nodeValue;
                var tagRadioP = parameter[0].firstChild.nodeValue;
                if(tagRadioP=="inlet")
                {document.getElementById("inlet").checked=true;
                }
                else if(tagRadioP=="outlet")
                {document.getElementById("outlet").checked=true;
                }
                else if(tagRadioP=="chlorine")
                {document.getElementById("chlorine").checked=true;
                }
        
                else
                {document.getElementById("pressure").checked=true;
                }
        
                var tagRadioT=tagType[0].firstChild.nodeValue;
                if(tagRadioT=="mls")
                {document.getElementById("mls").checked=true;
                }
                else if(tagRadioT=="ppm")
                {document.getElementById("ppm").checked=true;
                }
                else if(tagRadioT=="ms")
                {document.getElementById("ms").checked=true;
                }
                else
                {document.getElementById("millionliters").checked=true;
                }
                document.getElementById("lowlevel").value=lowlevel[0].firstChild.nodeValue;
                document.getElementById("highlevel").value=highlevel[0].firstChild.nodeValue;
                document.getElementById("reserviour_id").value=reserviourId[0].firstChild.nodeValue;
                document.getElementById("location").value=location[0].firstChild.nodeValue;
        
                var alarmVal=alarm[0].firstChild.nodeValue;
                if(alarmVal!="null"){
                    document.getElementById("alarm").checked=true;
                }
                var eventVal=event[0].firstChild.nodeValue;
                if(eventVal!="null"){
                    document.getElementById("event").checked=true;
                }
        
            }
        </script>
    </head>

    <body class="body1">
        <form action="TeleMeasurand" method="post">
            <main>
                <h2>TELE MEASURAND</h2>
                <table border="1" width="105%">
                    <tr><td>TAGID   :</td><td><input type="text" name="tag_id"  id="tag_id"   value=""  /></td></tr>
                    <tr><td>TAG NAME:</td><td><input type="text" name="tag_name" id="tag_name"   value="" /></td></tr>
                    <tr><td>PARAMETER:</td><td><input type="radio" name="type1" id="pressure"/>Pressure
                            <input type="radio" name="type1" id="inlet" value="inlet"/>Inlet-flow
                            <input type="radio" name="type1" id="outlet" value="outlet"/>Outlet-flow
                            <input type="radio" name="type1" id="chlorine" value="chlorine"/>Chlorine
                        </td></tr>
                    <tr><td>TAG TYPE:</td><td><input type="radio" name="type" id="millionliters" value="ml">MillionLiters
                            <input type="radio" name="type" id="mls" value="mls">ML/s
                            <input type="radio" name="type" id="ppm" value="ppm">ppm
                            <input type="radio" name="type" id="ms" value="ms" >m/s
                        </td></tr>
                    <tr><td>LEVELS</td><td>LOW</td><td>HIGH</td></tr>
                    <tr>
                        <td></td><td><input type="text" name="low_level" id="lowlevel"/></td>
                        <td><input type="text" name="high_level" id="highlevel"/></td> 
                    </tr>
                    <tr><th>RTU DETAILS</th></tr>
                    <tr><td>RESERVIOUR ID:<input type="text" name="reserviour_id" id="reserviour_id"/></td>
                        <td>Location:<input type="text" name="location" id="location"/></td>
                </table>
                <input type="checkbox" name="alram" id="alarm"/>Genrate Alram<input type="checkbox" name="event" id="event" />Genrate Event
            </main>
            <aside>
                <table>
                    <tr><td><input type="button" name="btn" value="View" class="tabBtn" onclick="viewMeasurand()"/></td></tr>
                    <tr><td><input type="submit" name="btn" value="Save" class="tabBtn"/></td></tr>
                    <tr><td><input type="submit" name="btn" value="Update" class="tabBtn"/></td></tr>
                    <tr><td><input type="submit" name="btn" value="Delete" class="tabBtn"/></td></tr>
                    <tr><td><input type="submit" name="btn" value="ClearAll" class="tabBtn"/></td></tr>                        
                </table>

            </aside>
        </form>
    </body>
</html>
