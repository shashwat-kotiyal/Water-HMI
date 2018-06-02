<%-- 
    Document   : view
    Created on : 22-Nov-2014, 19:14:47
    Author     : Vishal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>

        <title>Info page</title>     

        <script>
            window.onload = function()
            {
                // call AJAX function every 3 seconds (3000 milliseconds)
                setInterval("loadXMLDoc()", 3000);
            }
            
            function loadXMLDoc()
            {
                
                var xmlhttp,x,i;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp = new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange = function()
                {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        //x=xmlhttp.responseXML.getElementsByTagName("tag-config");
                        //for (i=0;i<x.length;i++)
                        //{
                        //var res_id =xmlhttp.responseXML.getElementsByTagName("reserviour-id")[0].firstChild.nodeValue;
                        var in_flow =xmlhttp.responseXML.getElementsByTagName("inlet-flow")[0].firstChild.nodeValue;
                        var out_flow =xmlhttp.responseXML.getElementsByTagName("outlet-flow")[0].firstChild.nodeValue;
                        //var pres_lvl = x[i].getElementsByTagName("pressure-level")[0].firstChild.nodeValue;
                        var wat_lvl =xmlhttp.responseXML.getElementsByTagName("water-level")[0].firstChild.nodeValue;
                        var chl_lvl = xmlhttp.responseXML.getElementsByTagName("chlorine-level")[0].firstChild.nodeValue;
                        document.getElementById("myDiv").innerHTML= in_flow;
                        document.getElementById("myDiv1").innerHTML = out_flow;
                        //document.getElementById("myDiv2").innerHTML = pres_lvl;
                        document.getElementById("myDiv3").innerHTML = wat_lvl;
                       // document.getElementById("myDiv4").innerHTML = chl_lvl;
                        if(in_flow>80)
                           document.getElementById("myDiv").style="color:red";
                        else
                            document.getElementById("myDiv").style="color:blue";
                         if(out_flow>70)
                            document.getElementById("myDiv1").style="color:red";
                        else
                            document.getElementById("myDiv1").style="color:blue";
                         if(wat_lvl<25 || wat_lvl>95)
                            document.getElementById("myDiv3").style="color:red";
                        else
                            document.getElementById("myDiv3").style="color:blue";
//                         if( chl_lvl<4 || chl_lvl>6)
//                            document.getElementById("myDiv4").style="color:red";
//                        else
//                            document.getElementById("myDiv4").style="color:blue";
                        //}  
                    }
                }
                xmlhttp.open("GET","dynamicvalue.xml", true);
                xmlhttp.send();
            }
            
        </script>

        <style>
            body {
                background-color:#999999;

            } 

            #myDiv {  
                position:absolute;
                top:340px;
                left:100px;
                  font-size:18px;
                color:#3300ff;
                button:active;}


            #myDiv3 {  
                position:absolute;
                top:200px;
                left:285px;
                  font-size:18px;
               
                color:#3300ff;
            }
            
            #myDiv1 {  
                position:absolute;
                top:185px;
                left:380px;
                font-size:18px;
                color:#3300ff;
            }
           

        </style>
    </head>

    <body>
        <a type="button" value="SSLD" onClick="location.href='welcome.jsp'"  title="View"><img src="images/close.PNG" align="right"></a>
        <a type="button" value="SSLD" onClick="location.href='wtp.jsp'"  title="View"><img src="images/DISTRIBUTION.PNG" align="right"></a>

        <style>
            body {
                background-color:#999999;
            } 
        </style>
       <div  id="myDiv"></div>
        <div id="myDiv1"></div>
       
        <div id="myDiv3"></div>
       



    <center>

        <font face="arial" size=5 color="BLUE">
        <B>DISTRIBUTION CENTER</B> 

    </center>
    <center>
        <svg width="998" height="625">

        <g>
        <title>Layer 1</title>
        <line x1="195.5" y1="41" x2="212.5" y2="24" id="svg_44" stroke="#ffffff" stroke-dasharray="2,2" fill="none"/>
        <line x1="640.5" y1="28" x2="659.5" y2="47" id="svg_69" stroke="#ffffff" stroke-dasharray="2,2" fill="none"/>
        <rect ry="4" rx="4" fill-opacity="0.26" stroke-dasharray="2,2" stroke-width="null" stroke="#ffffff" fill="#000000" id="svg_2" height="605" width="813" y="7.75" x="55.75"/>
        <rect ry="8" rx="8" transform="rotate(36.8006, 460.369, 313.16)" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_3" height="18" width="1005.13986" y="304.16103" x="-42.20071"/>

        <g>
        <rect ry="8" rx="8" transform="rotate(36.8006, 460.369, 313.16)" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="skyblue" id="svg_3" height="18" width="222" y="305" x="458"/>
        <animate attributeType="CSS" attributeName="opacity" from="1" to="0" begin="G10.click" end="S10.click" dur="3s" repeatCount="indefinite" />
        </g>

        <g id="G10">
        <rect x="900" y="407" height="19" width="45" fill="green"/>
        <text x="905" y="424" font-size="18" fill="black">ON
        </g>
        <g id="S10">
        <rect x="935" y="407" height="19" width="45" fill="red"/>
        <text x="940" y="424" font-size="18" fill="black">OFF

        </g>


        <rect ry="8" rx="8" transform="rotate(-36.1354, 460.822, 306.633)" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_4" height="18" width="1001.36348" y="297.633" x="-39.85848"/>
        <g>
        <rect ry="8" rx="8" transform="rotate(-36.1354, 460.822, 306.633)" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="skyblue" id="svg_4" height="18" width="300" y="297" x="456"/>
        <animate attributeType="CSS" attributeName="opacity" from="1" to="0" begin="G9.click" end="S9.click" dur="3s" repeatCount="indefinite" />
        </g>
        <g id="G9">
        <rect x="900" y="387" height="19" width="45" fill="green"/>
        <text x="905" y="404" font-size="18" fill="black">ON
        </g>
        <g id="S9">
        <rect x="935" y="387" height="19" width="45" fill="red"/>
        <text x="940" y="404" font-size="18" fill="black">OFF
        </g>



        <rect stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_5" height="28" width="863.00001" y="296.75" x="4.74999"/>
        <g>
        <rect stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="skyblue" id="svg_5" height="28" width="863.00001" y="296.75" x="4.74999"/>
        <!-- <animate attributeType="CSS" attributeName="opacity" from="1" to="0" dur="3s" repeatCount="indefinite" />-->
        </g>

        <line fill="none" stroke-dasharray="2,2" stroke-width="null" stroke="#ffffff" id="svg_6" y2="614.75" x2="463.75" y1="12.75" x1="458.75"/>


        <rect ry="4" rx="4" transform="rotate(-35.5187, 258.824, 153.469)" stroke-dasharray="2,2" stroke-width="null" stroke="#ffffff" fill="#ffffff" id="svg_7" height="20" width="487.1486" y="143.47012" x="15.24867"/>
        <g>
        <rect ry="4" rx="4" transform="rotate(-35.5187, 258.824, 153.469)" stroke-dasharray="2,2" stroke-width="null" stroke="skyblue" fill="skyblue" id="svg_7" height="21" width="200" y="143.47012" x="15.24867"/>
        <animate attributeType="CSS" attributeName="opacity" from="1" to="0" begin="G1.click" end="S1.click" dur="3s" repeatCount="indefinite" />
        </g>

        <g id="G">
        <rect x="881" y="205" height="22" width="110" fill="black"/>
        <text x="884" y="223" font-size="13" fill="white" >PUMP CONTROL
        </g>



        <g id="G1">
        <rect x="900" y="227" height="19" width="45" fill="green"/>
        <text x="905" y="244" font-size="18" fill="black">ON
        </g>
        <g id="S1">
        <rect x="935" y="227" height="19" width="45" fill="red"/>
        <text x="940" y="244" font-size="18" fill="black">OFF
        </g>


        <rect id="svg_8" ry="4" rx="4" transform="rotate(-35.5187, 667.525, 465.254)" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" height="20" width="491.33322" y="455.25449" x="421.8593"/>
        <rect transform="rotate(33.7205, 263.203, 466.045)" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_9" height="20" width="503.18843" y="456.04504" x="11.60897"/>
        <g>
        <rect transform="rotate(33.7205, 263.203, 466.045)" stroke-dasharray="2,2" stroke-width="0" stroke="blue" fill="skyblue" id="svg_9" height="20" width="203.18843" y="456.04504" x="12.60897"/>
        <animate attributeType="CSS" attributeName="opacity" from="1" to="0" begin="G2.click" end="S2.click" dur="3s" repeatCount="indefinite" />
        </g>
        <g id="G2">
        <rect x="900" y="247" height="19" width="45" fill="green"/>
        <text x="905" y="264" font-size="18" fill="black">ON
        </g>
        <g id="S2">
        <rect x="935" y="247" height="19" width="45" fill="red"/>
        <text x="940" y="264" font-size="18" fill="black">OFF
        </g>

        <rect id="svg_10" transform="rotate(33.7205, 660.819, 151.121)" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" height="20" width="499.85952" y="141.12106" x="410.88899"/>

        <rect stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_15" height="18" width="809.00001" y="148.75" x="58.74997"/>

        <g>
        <rect stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="skyblue" id="svg_15" height="19" width="157" y="148" x="58.74997"/>
        <animate attributeType="CSS" attributeName="opacity" from="1" to="0" begin="G3.click" end="S3.click" dur="3s" repeatCount="indefinite" />
        </g>
        <g id="G3">
        <rect x="900" y="267" height="19" width="45" fill="green"/>
        <text x="905" y="284" font-size="18" fill="black">ON
        </g>
        <g id="S3">
        <rect x="935" y="267" height="19" width="45" fill="red"/>
        <text x="940" y="284" font-size="18" fill="black">OFF
        </g>

        <g>
        <rect stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="skyblue" id="svg_15" height="18" width="585" y="149" x="284"/>
        <animate attributeType="CSS" attributeName="opacity" from="1" to="0" begin="G4.click" end="S4.click" dur="3s" repeatCount="indefinite" />
        </g>
        <g id="G4">
        <rect x="900" y="287" height="19" width="45" fill="green"/>
        <text x="905" y="304" font-size="18" fill="black">ON
        </g>
        <g id="S4">
        <rect x="935" y="287" height="19" width="45" fill="red"/>
        <text x="940" y="304" font-size="18" fill="black">OFF
        </g>


        <rect id="svg_16" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" height="18" width="809.00001" y="456.75" x="58.74998"/>
        <g>
        <rect id="svg_16" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="skyblue" height="19" width="152" y="456.75" x="65"/>
        <animate attributeType="CSS" attributeName="opacity" from="1" to="0" begin="G8.click" end="S8.click" dur="3s" repeatCount="indefinite" />
        </g>



        <g>
        <rect id="svg_16" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="skyblue" height="18" width="583" y="457" x="285"/>
        <animate attributeType="CSS" attributeName="opacity" from="1" to="0" begin="G6.click" end="S6.click" dur="3s" repeatCount="indefinite" />
        </g>
        <g id="G6">
        <rect x="900" y="327" height="19" width="45" fill="green"/>
        <text x="905" y="344" font-size="18" fill="black">ON
        </g>
        <g id="S6">
        <rect x="935" y="327" height="19" width="45" fill="red"/>
        <text x="940" y="344" font-size="18" fill="black">OFF
        </g>

        <rect stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#ffffff" id="svg_17" height="603.00003" width="18" y="8.74997" x="242.75"/>
        <rect id="svg_18" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#ffffff" height="605" width="18" y="6.75" x="661.75"/>
        <ellipse id="svg_14" height="605" ry="43.5" rx="44.5" stroke-dasharray="2,2" stroke-width="3" stroke="#000000" fill="#56aaff" cy="158.25" cx="667.25"/>
        <ellipse id="svg_12" height="605" ry="43.5" rx="44.5" stroke-dasharray="2,2" stroke-width="3" stroke="#000000" fill="#56aaff" cy="469.25" cx="670.25"/>
        <ellipse id="svg_13" height="605" ry="43.5" rx="44.5" stroke-dasharray="2,2" stroke-width="3" stroke="#000000" fill="#56aaff" cy="466.25" cx="251.25"/>
        <ellipse height="605" ry="43.5" rx="44.5" stroke-dasharray="2,2" stroke-width="3" stroke="#000000" fill="#56aaff" id="svg_11" cy="159.25" cx="251.25"/>
        <g>
        <ellipse height="605" ry="43.5" rx="44.5" stroke-dasharray="2,2" stroke-width="3" stroke="#000000" fill="lightblue" id="svg_11" cy="159.25" cx="251.25"/>
        <animate attributeType="CSS" attributeName="opacity" from="1" to="0" begin="G1.click" end="S1.click" dur="3s" repeatCount="indefinite" />
        </g>


        <rect id="svg_21" ry="16" rx="16" fill-opacity="0.84" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#333333" height="49" width="56" y="287.75" x="430.75"/>
        <rect id="svg_22" ry="16" rx="16" fill-opacity="0.84" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#333333" height="49" width="56" y="286.75" x="838.75"/>

        <rect id="svg_23" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#ffffff" height="603.00003" width="18" y="10.74997" x="46.75"/>
        <g>
        <rect id="svg_23" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="skyblue" height="145.5" width="18" y="149" x="47.75"/>
        <animate attributeType="CSS" attributeName="opacity" from="1" to="0" begin="G3.click" end="S3.click" dur="3s" repeatCount="indefinite" />
        </g>


        <g>
        <rect id="svg_23" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="skyblue" height="141.5" width="19" y="335" x="47.75"/>
        <animate attributeType="CSS" attributeName="opacity" from="1" to="0" begin="G8.click" end="S8.click" dur="3s" repeatCount="indefinite" />
        </g>
        <g id="G8">
        <rect x="900" y="367" height="19" width="45" fill="green"/>
        <text x="905" y="384" font-size="18" fill="black">ON
        </g>
        <g id="S8">
        <rect x="935" y="367" height="19" width="45" fill="red"/>
        <text x="940" y="384" font-size="18" fill="black">OFF
        </g>
        <rect ry="16" rx="16" fill-opacity="0.84" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#333333" id="svg_20" height="49" width="56" y="289.75" x="33.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_24" y2="54.75" x2="377.75" y1="27.75" x1="358.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_25" y2="94.75" x2="315.75" y1="67.75" x1="296.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_26" y2="115.75" x2="375.75" y1="95.75" x1="360.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_27" y2="27.75" x2="140.75" y1="49.75" x1="122.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_28" y2="62.75" x2="188.75" y1="84.75" x1="170.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_29" y2="109.75" x2="108.75" y1="80.75" x1="132.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_30" y2="187.75" x2="351.75" y1="207.75" x1="333.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_31" y2="228.75" x2="422.75" y1="253.75" x1="401.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_32" y2="275.75" x2="337.75" y1="247.75" x1="357.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_33" y2="237.75" x2="213.75" y1="214.75" x1="198.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_34" y2="207.75" x2="103.75" y1="235.75" x1="123.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_35" y2="410.75" x2="92.75" y1="382.75" x1="113.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_36" y2="374.75" x2="210.75" y1="402.75" x1="186.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_37" y2="552.75" x2="102.75" y1="532.75" x1="88.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_38" y2="560.75" x2="177.75" y1="535.75" x1="162.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_39" y2="484.75" x2="360.75" y1="505.75" x1="343.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_40" y2="525.75" x2="423.75" y1="547.75" x1="407.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_41" y2="573.75" x2="340.75" y1="544.75" x1="358.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_42" y2="554.75" x2="292.75" y1="554.75" x1="261.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_43" y2="435.75" x2="358.75" y1="409.75" x1="335.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_45" y2="404.75" x2="398.75" y1="379.75" x1="378.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_46" y2="374.75" x2="346.75" y1="349.75" x1="328.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_47" y2="385.75" x2="493.75" y1="364.75" x1="508.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_48" y2="425.75" x2="542.75" y1="404.75" x1="561.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_49" y2="349.75" x2="573.75" y1="372.75" x1="556.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_50" y2="555.75" x2="516.75" y1="529.75" x1="495.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_51" y2="520.75" x2="566.75" y1="499.75" x1="552.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_52" y2="569.75" x2="571.75" y1="554.75" x1="558.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_53" y2="272.75" x2="567.75" y1="253.75" x1="551.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_54" y2="242.75" x2="616.75" y1="220.75" x1="600.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_55" y2="217.75" x2="562.75" y1="195.75" x1="545.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_56" y2="75.75" x2="490.75" y1="60.75" x1="503.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_57" y2="110.75" x2="536.75" y1="92.75" x1="553.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_58" y2="39.75" x2="555.75" y1="57.75" x1="542.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_59" y2="103.75" x2="715.75" y1="82.75" x1="698.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_60" y2="44.75" x2="796.75" y1="24.75" x1="776.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_61" y2="108.75" x2="797.75" y1="85.75" x1="776.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_62" y2="200.75" x2="757.75" y1="179.75" x1="772.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_63" y2="238.75" x2="810.75" y1="214.75" x1="826.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_64" y2="264.75" x2="753.75" y1="239.75" x1="772.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_65" y2="402.75" x2="731.75" y1="374.75" x1="711.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_66" y2="373.75" x2="780.75" y1="350.75" x1="765.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_67" y2="420.75" x2="780.75" y1="403.75" x1="768.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_68" y2="513.75" x2="745.75" y1="492.75" x1="756.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_70" y2="559.75" x2="807.75" y1="537.75" x1="823.75"/>
        <line fill="none" stroke-dasharray="2,2" stroke="#000000" id="svg_71" y2="578.75" x2="737.75" y1="552.75" x1="761.75"/>
        <text font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#000000" id="svg_72" y="161.75" x="249.75" >Tank 1</text>
        <text id="svg_73" font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#000000" y="469.75" x="672.75">Tank 4</text>
        <text id="svg_74" font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#000000" y="161.75" x="670.75">Tank 3</text>
        <text id="svg_75" font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#000000" y="473.75" x="249.75">Tank 2</text>
        <text font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#000000" id="svg_76" y="318.75" x="575.75">Main Line</text>
        <text id="svg_77" font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#000000" y="473.75" x="484.75">SubMain Line 2</text>
        <text id="svg_78" font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#000000" fill="#000000" y="164.75" x="487.75">SubMain Line 1</text>

        <ellipse ry="13" rx="14" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#7f0000" id="svg_80" cy="268.75" cx="99.75"/>



        <text font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_81" y="275.75" x="100.75">P1</text>
        <ellipse id="svg_83" ry="13" rx="14" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#7f0000" cy="260.75" cx="58.75"/>
        <ellipse id="svg_84" ry="13" rx="14" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#7f0000" cy="358.75" cx="99.75"/>
        <ellipse id="svg_85" ry="13" rx="14" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#7f0000" cy="369.75" cx="54.75"/>
        <ellipse id="svg_86" ry="13" rx="14" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#7f0000" cy="276.75" cx="504.75"/>
        <ellipse id="svg_87" ry="13" rx="14" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#7f0000" cy="346.75" cx="503.75"/>
        <ellipse id="svg_88" ry="13" rx="14" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#7f0000" cy="157.75" cx="385.75"/>
        <ellipse id="svg_89" ry="13" rx="14" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#7f0000" cy="466.75" cx="384.75"/>
        <text id="svg_82" font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" y="268.75" x="56.75">P2</text>
        <text font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_90" y="365.75" x="100.75">P3</text>
        <text font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_91" y="377.75" x="52.75">P4</text>
        <text font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_92" y="164.75" x="385.75">P5</text>
        <text font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_93" y="473.75" x="384.75">P6</text>
        <text font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_94" y="283.75" x="504.75">P7</text>
        <text font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="20" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_95" y="353.75" x="504.75">P8</text>
        <text font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="21" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" id="svg_99" y="67.75" x="199.75">Region 1</text>
        <text id="svg_100" font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="21" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" y="380.75" x="609.75">Region 4</text>
        <text id="svg_101" font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="21" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" y="72.75" x="618.75">Region 3</text>
        <text id="svg_102" font-weight="bold" xml:space="preserve" text-anchor="middle" font-family="Serif" font-size="21" stroke-dasharray="2,2" stroke-width="0" stroke="#ffffff" fill="#ffffff" y="370.75" x="194.75">Region 2</text>

        <text x="982" y="241" font-size="13" fill="BLUE">P1


        </g>
        <g>
        <text x="982" y="261" font-size="13" fill="BLUE">P3
        </g>
        <g>
        <text x="982" y="281" font-size="13" fill="BLUE">P2
        </g>
        <g>
        <text x="982" y="301" font-size="13" fill="BLUE">P5
        </g>
        <g>
        <text x="982" y="341" font-size="13" fill="BLUE">P6
        </g>
        <g>
        <text x="982" y="381" font-size="13" fill="BLUE">P4
        </g>
        <g>
        <text x="982" y="401" font-size="13" fill="BLUE">P7
        </g>
        <g>
        <text x="982" y="421" font-size="13" fill="BLUE">P8
        </g>
        </svg>	


    </center>

</body>
</html>

