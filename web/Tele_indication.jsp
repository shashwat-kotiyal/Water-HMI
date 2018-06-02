<%@include file="CacheManager.jsp"%>
<%@include file="SessionManager.jsp" %>
<!DOCTYPE html>
<jsp:include page="welcome.jsp"/>
<html>

    <head>
        <title>Tag configuration</title>
        <link rel="stylesheet" href="style/page1.css" type="text/css" />
        <script type="text/javascript">
            function viewIndication()
            {
                var xmlHttpRequest;
                if (window.XMLHttpRequest)
                {
                    xmlHttpRequest= new XMLHttpRequest();
                }
                else
                {
                    xmlHttpRequest=new ActiveXObject("Microsoft.XMLHTTP");
                }
                var tag_id=document.getElementById("tag_id").value;
                xmlHttpRequest.open("GET","View.xml?tag_id="+tag_id,true);
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
                document.getElementById("tag_type2").checked=false;
                document.getElementById("tag_type1").checked=false;
        
                var xml=arguments[0];
                var tagId=xml.getElementsByTagName("tag-id");
                var tagName=xml.getElementsByTagName("tag-name");
                var tagType=xml.getElementsByTagName("tag-type");
                var reserviourId=xml.getElementsByTagName("reserviour-id");
                var location=xml.getElementsByTagName("location");
                var alarm=xml.getElementsByTagName("alarm");
                var event=xml.getElementsByTagName("event");
        
                document.getElementById("tag_id").value=tagId[0].firstChild.nodeValue;
                document.getElementById("tag_name").value=tagName[0].firstChild.nodeValue;
                var tagRadio=tagType[0].firstChild.nodeValue;
                if(tagRadio=="valve")
                {
                    document.getElementById("tag_type1").checked=true;
                }
                else if(tagRadio=="scour")
                {
                    document.getElementById("tag_type2").checked=true;
                }
                else
                {
                    document.getElementById("tag_type3").checked=true;
                }
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
        <form action="TeleIndication" method="post">
            <main>
                <h2>TELE INDICATION</h2>
                <table border="1" width="105%">
                    <tr><td>TAGID   :</td><td><input type="text" name="tag_id"   id="tag_id"    value=""  /></td></tr>
                    <tr><td>TAG NAME:</td><td><input type="text" name="tag_name" id="tag_name"  value="" /></td></tr>
                    <tr><td>TAG TYPE:</td><td>
                            <input type="radio" name="tag_type" id="tag_type1" value="valve"/>Valve
                            <input type="radio" name="tag_type" id="tag_type2" value="scour"/>Scour valve
                            <input type="radio" name="tag_type" id="tag_type3" value="chlorine"/>Chlorine valve
                        </td></tr>
                    <tr><th>RTU DETAILS</th></tr>
                    <tr><td>RESERVIOUR ID:<input type="text" name="reserviour_id" id="reserviour_id"/></td>
                        <td>LOCATION:<input type="text" name="location" id="location"/></td>
                </table>
                <input type="checkbox" name="alarm" id="alarm" />Genrate Alram<input type="checkbox" name="event" id="event"/>Genrate Event
            </main>
            <aside>
                <table>
                    <tr><td><input type="button" name="btn" value="View" class="tabBtn" onclick="viewIndication()"/></td></tr>
                    <tr><td><input type="submit" name="btn" value="Save" class="tabBtn"/></td></tr>
                    <tr><td><input type="submit" name="btn" value="Update" class="tabBtn"/></td></tr>
                    <tr><td><input type="submit" name="btn" value="Delete" class="tabBtn"/></td></tr>
                    <tr><td><input type="submit" name="btn" value="ClearAll" class="tabBtn"/></td></tr>                        
                </table>
            </aside>
        </form>
    </body>
</html>