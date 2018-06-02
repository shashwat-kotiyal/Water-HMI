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
                        document.getElementById("myDiv4").innerHTML = chl_lvl;
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
                         if( chl_lvl<4 || chl_lvl>6)
                            document.getElementById("myDiv4").style="color:red";
                        else
                            document.getElementById("myDiv4").style="color:blue";
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
                top:291px;
                left:155px;
                color:#3300ff;
                  font-size:18px;
               }


            #myDiv3 {  
                position:absolute;
                top:260px;
                left:500px;
                color:#3300ff;
                  font-size:18px;
            }
            #myDiv4 {  
                position:absolute;
                top:161px;
                left:748px;
                color:#3300ff;
                  font-size:18px;
            }
            #myDiv1 {  
                position:absolute;
                top:481px;
                left:979px;
                color:#3300ff;
                  font-size:18px;
            }
            #myDiv2 {  
                position:absolute;
                top:500px;
                left:520px;
                color:#3300ff;
                  font-size:18px;
            }

        </style>
    </head>

    <body>
        <a type="button" value="SSLD" onClick="location.href='welcome.jsp'"  title="View"><img src="images/close.PNG" align="right"></a>
        <a type="button" value="SSLD" onClick="location.href='wdsys.jsp'"  title="View"><img src="images/DISTRIBUTION.PNG" align="right"></a>

       <div  id="myDiv"></div>
        <div id="myDiv1">Ajax</div>
       
        <div id="myDiv3">Ajax</div>
        <div id="myDiv4">Ajax</div>


    <center>

        <font face="arial" size=5 color="BLUE">
        <B>WATER TREATMENT PLANT</B> 

    </center>
    <br>
    <center>
        <svg width="1250" height="550">
        <!-- SVG created for IndiraNager -->

        <defs>

        <!-- Color filling for Airdischarge and chlorine pipe -->
        <linearGradient id="svg_56" x1="0" y1="0" x2="1" y2="1">
        <stop offset="0" stop-color="#b2b2b2" stop-opacity="1"/>
        <stop offset="1" stop-color="#e5e5e5" stop-opacity="1"/>
        </linearGradient>
        <linearGradient id="svg_28" x1="0.74609" y1="0.60938" x2="1" y2="1">
        <stop offset="0" stop-color="#deeaea" stop-opacity="1"/>
        <stop offset="1" stop-color="#c4efef" stop-opacity="1"/>
        </linearGradient>

        <!-- Color filling for  chlorine tank -->
        <linearGradient id="svg_40" x1="0.54688" y1="0.46875" x2="1" y2="1">
        <stop offset="0" stop-color="#3a3434" stop-opacity="1"/>
        <stop offset="1" stop-color="#938c93" stop-opacity="1"/>
        </linearGradient>

        <!-- Color filling for all lower water pipe -->
        <linearGradient id="svg_55" x1="0.11328" y1="0.11328" x2="0.86328" y2="0.84766">
        <stop offset="0" stop-color="#4c4c4c" stop-opacity="1"/>
        <stop offset="1" stop-color="#e5e5e5" stop-opacity="1"/>
        </linearGradient>
        <linearGradient id="svg_77" x1="0.74609" y1="0.60938" x2="1" y2="1">
        <stop offset="0" stop-color="#c6f2f2" stop-opacity="1"/>
        <stop offset="1" stop-color="#c4efef" stop-opacity="1"/>
        </linearGradient>
        </defs>

        <g>
        <!-- Motor pump outer cover -->
        <ellipse ry="33.5" rx="34.5" stroke-dasharray="null" stroke-width="0.5" stroke="#cccccc" fill="#ff7f00" cy="466.25" cx="663.25" 
                 id="svg_3" fill-opacity="0.74"/>
        <ellipse ry="33.5" rx="34.5" stroke-dasharray="null" stroke-width="0.5" stroke="#cccccc" fill="#ff7f00" 
                 id="svg_1" cy="367.25" cx="658.25" fill-opacity="0.74"/>

        <!-- main tank outer body -->
        <rect x="219.60244" y="146.09079" width="185.00001" height="209.99999" 
              id="svg_8" fill="#ceeded" stroke="#cccccc" stroke-width="1.5" stroke-dasharray="null" rx="47" ry="47" fill-opacity="0.47"/>

        <rect x="151.60229" y="390.09091" width="12" height="0"
              id="svg_13" fill="#a07e7e" stroke="#000000" stroke-width="0" stroke-dasharray="null"/>

        <!-- chlorine tank outer body -->
        <rect x="565.60236" y="57.09016" width="212.99998" height="28" 
              id="svg_31" fill="url(#svg_40)" stroke="#000000" stroke-width="0.3" stroke-dasharray="null" rx="36" ry="36" fill-opacity="0.47"/>

        <rect x="262.60229" y="43.09173" width="9" height="93.99999" 
              id="svg_32" fill="url(#svg_28)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.79" rx="2" ry="2"/>

        <!-- animation for chlorine Enjecter -->
        <line x1='562' y1='71' x2='350' y2='71' stroke-width='3.2' stroke='darkblue'>
        <animate attributeName='stroke-dasharray' begin="CG.click" end="CS.click" dur='2s' values='1, 2,2,3; 6' repeatCount="indefinite"/>
        </line>
        <line x1='354' y1='68' x2='354' y2='142' stroke-width='3.2' stroke='darkblue'>
        <animate attributeName='stroke-dasharray' begin="CG.click" end="CS.click" dur='2s' values='1, 1,1,1; 8' repeatCount="indefinite"/>
        </line>

        <!-- chlorine injecter pipe from tank -->
        <rect x="350.60214" y="66.09073" width="210" height="10" 
              id="svg_34" fill="url(#svg_28)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.79" rx="2" ry="2"/>

        <rect x="260.60229" y="163.09091" width="0" height="7" 
              id="svg_35" fill="#a07e7e" stroke="#000000" stroke-width="0" stroke-dasharray="null"/>

        <g id="CG">
        <rect x="1140" y="175" height="19" width="45" fill="green"/>
        <text x="1146" y="193" font-size="18" fill="white">ON
        </g>
        <g id="CS">
        <rect x="1190" y="175" height="19" width="45" fill="red"/>
        <text x="1191" y="193" font-size="18" fill="white">OFF
        </g>

        <!-- animation for motor pump 1 -->
        <g transform="translate(658, 367)">
        <circle cx="0" cy="0" r="18" style="fill:rgba(0,0,0,0);stroke:black; stroke-width:18; stroke-dasharray:15, 14;">
        <animateTransform attributeType="xml" attributeName="transform" type="rotate" from="0" to="360" begin="G.click" end="S.click" dur="5s" repeatCount="indefinite" />
        </circle>  
        </g>
        <g id="G">
        <rect x="1140" y="80" height="20" width="45" fill="green"/>
        <text x="1146" y="95" font-size="16" fill="white">GO
        </g>
        <g id="S">
        <rect x="1190" y="80" height="20" width="45" fill="red"/>
        <text x="1191" y="95" font-size="16" fill="white">STOP
        </g>


        <ellipse cx="192.60229" cy="341.09091" 
                 id="svg_39" fill="#a07e7e" stroke="#000000" stroke-width="0" stroke-dasharray="null"/>

        <rect x="144.60229" y="386.09091" width="4" height="0" 
              id="svg_42" fill="#a07e7e" stroke="#000000" stroke-width="0" stroke-dasharray="null"/>


        <!-- animation for dynamic water flow near motor pump 2 also -->		
        <rect x="320.60275" y="463.09217" width="310.00001" height="19"
              id="svg_45" fill="url(#svg_77)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.87" rx="4" ry="4"/>

        <line x1='318.60275' y1='472.5' x2='520' y2='472.5' stroke-width='18' stroke='blue'>
        <animate attributeName='stroke-dasharray' begin='0s' dur='3s' values='2, 2,2,2; 3' repeatCount="indefinite"/>
        </line>


        <line x1='522' y1='472.7' x2='630' y2='472.7' stroke-width='18.5' stroke='blue'>
        <animate attributeName='stroke-dasharray' begin="G1.click" end="S1.click" dur='3s' values='2, 2,2,2; 3' repeatCount="indefinite"/>
        </line>




        <!-- water flow pipe near motor pump 2 -->
        <rect x="320.60275" y="463.09217" width="310.00001" height="19"
              id="svg_45" fill="url(#svg_77)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.87" rx="4" ry="4"/>

        <line x1='308' y1='366' x2='308' y2='466' stroke-width='18' stroke='blue'>
        <animate attributeName='stroke-dasharray' begin='0s' dur='2s' values='2, 2,2,2; 3' repeatCount="indefinite"/>
        </line>



        <!--vertical water pipe near main tank -->
        <rect x="298.60295" y="366.09122" width="19" height="93.99999" 
              id="svg_46" fill="url(#svg_77)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.87"/>

        <rect x="350.09064" y="67.09121" width="9" height="69.99999" 
              id="svg_47" fill="url(#svg_28)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.79" rx="3" ry="3"/>


        <!---horizontal water pipe near motor pump 1 -->
        <rect x="689.60267" y="349.09101" width="175" height="11" 
              id="svg_48" fill="url(#svg_77)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.87" rx="9" ry="9"/>

        <rect x="543.60211" y="363.09091" width="81.00001" height="19" 
              fill="url(#svg_77)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.87" id="svg_49"/>

        <rect x="522.60229" y="386.09044" width="19" height="78.00001" 
              id="svg_50" fill="url(#svg_77)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.72"/>

        <line x1='533' y1='466' x2='533' y2='366' stroke-width='20' stroke='skyblue'>
        <animate attributeName='stroke-dasharray'  begin='G.click' end='S.click' dur='3s' values='2, 2,2,2; 3' repeatCount="indefinite"/>
        </line>
        <line x1='543.6' y1='372.8' x2='625' y2='372.8' stroke-width='19' stroke='skyblue'>
        <animate attributeName='stroke-dasharray' begin='G.click' end='S.click' dur='3s' values='2, 2,2,2; 3' repeatCount="indefinite"/>
        </line>
        <line x1='689' y1='355' x2='850' y2='355' stroke-width='11.5' stroke='skyblue'>
        <animate attributeName='stroke-dasharray' begin='G.click' end='S.click' dur='3s' values='2, 2,2,2; 3' repeatCount="indefinite"/>
        </line>






        <ellipse stroke-width="0.2" cx="38.10229" cy="208.09091" 
                 id="svg_51" fill="#5656ff" stroke="#000000" stroke-dasharray="null" rx="18.5" ry="18"/>

        <!-- animation for motor pump 1 -->
        <g transform="translate(663, 467)">
        <circle cx="0" cy="0" r="18" style="fill:rgba(0,0,0,0);stroke:black; stroke-width:18; stroke-dasharray:15, 14;">
        <animateTransform attributeType="xml" attributeName="transform" type="rotate" from="0" to="360" begin="G1.click" end="S1.click" dur="5s" repeatCount="indefinite" />
        </circle>
        </g>

        <g id="G1">
        <rect x="1140" y="102" height="20" width="45" fill="green"/>
        <text x="1146" y="117" font-size="16" fill="white">GO
        </g>
        <g id="S1">
        <rect x="1190" y="102" height="20" width="45" fill="red"/>
        <text x="1191" y="117" font-size="16" fill="white">STOP
        </g>

        <!-- animation for dynamic water flow at inlet side -->

        <line x1='34' y1='208' x2='220' y2='208' stroke-width='20' stroke='skyblue'>
        <animate attributeName='stroke-dasharray' begin="G3.click" end="S3.click" dur='3s' values='2, 2,2,2; 3' repeatCount="indefinite"/>
        </line>

        <g id="G3">
        <rect x="1140" y="130" height="19" width="45" fill="green"/>
        <text x="1146" y="145" font-size="18" fill="white">ON
        </g>
        <g id="S3">
        <rect x="1190" y="130" height="19" width="45" fill="red"/>
        <text x="1191" y="145" font-size="18" fill="white">OFF
        </g>


        <rect stroke-width="0.3" x="34.60252" y="198.09102" width="174.00001" height="20"
              id="svg_52" fill="url(#svg_77)" stroke="#cccccc" fill-opacity="0.72"/>



        <!-- air discharge cap -->
        <rect x="291.60219" y="24.09062" width="24" height="35"
              id="svg_58" fill="#c95656" stroke="#000000" stroke-dasharray="null" stroke-width="0"/>

        <rect x="264.60267" y="42.09091" width="27" height="8" 
              id="svg_62" fill="url(#svg_28)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.79" rx="3" ry="3"/>

        <!-- main water tank design line -->
        <rect ry="5" rx="5" stroke-dasharray="null" stroke-width="0" stroke="#000000" fill="#756060"
              id="svg_63" height="6" width="183.99999" y="179.54566" x="220.60243" fill-opacity="0.86"/>

        <rect id="svg_64" ry="5" rx="5" stroke-dasharray="null" stroke-width="0" stroke="#000000" 
              fill="#756060" height="7" width="183.99997" y="315.54546" x="219.60244" fill-opacity="0.86"/>

        <rect ry="5" rx="5" fill-opacity="0.77" stroke-dasharray="null" stroke-width="0" stroke="#000000" 
              fill="url(#svg_55)" id="svg_65" height="28" width="6" y="57.54649" x="604.60229"/>

        <rect id="svg_66" ry="4" rx="4" fill-opacity="0.77" stroke-dasharray="null" stroke-width="0" stroke="#000000" 
              fill="url(#svg_55)" height="29" width="6" y="56.54648" x="733.60229"/>

        <!-- text title for chlorine tank,main tank,inlet,air discharge -->

      

       
        <text font-weight="normal" x="210.60229" y="26.37397" id="svg_7" fill="#000000" stroke="#000000" stroke-width="0" 
              stroke-dasharray="null" font-size="15" font-family="Serif" text-anchor="middle" xml:space="preserve"
              transform="matrix(1, 0, 0, 0.985917, 0, -1.0911)">Air Discharge</text>

        <text x="833.60229" y="333.09091" fill="#000000" stroke="#cccccc" stroke-width="0" 
              stroke-dasharray="null" fill-opacity="0.56" font-size="15" font-family="Fantasy" text-anchor="middle" xml:space="preserve"
              transform="rotate(178.466, 753.998, 160.322)" id="svg_23">^</text>

        <ellipse fill-opacity="0.58" stroke-dasharray="null" stroke-width="0.3" stroke="#000000" fill="url(#svg_56)" 
                 id="svg_27" cy="407.54546" cx="200.60229"/>


        <!-- animation for dynamic water flow at motor pump 2 right side -->
        <line x1='696' y1='452' x2='860' y2='452' stroke-width='9.3' stroke='lightblue'>
        <animate attributeName='stroke-dasharray' begin="G1.click" end="S1.click" dur='1' values='2, 2,2,2; 3' repeatCount="indefinite"/>
        </line>

        <rect x="861" y="449.5" width="79" height="9" 
              fill="url(#svg_77)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.88" id="svg_72"/>

        <line x1='860' y1='453' x2='940' y2='453' stroke-width='10' stroke='lightblue'>
        <animate attributeName='stroke-dasharray' begin="G1.click" end="S1.click" dur='1' values='2, 2,2,2; 3' repeatCount="indefinite"/>
        <animate attributeName='stroke-dasharray' begin="G.click" end="S.click" dur='1' values='2, 2,2,2; 3' repeatCount="indefinite"/>
        </line>


        <!---outlet pipe distribution --->			

        <rect x="693.60265" y="447.09091" width="167" height="10" 
              fill="url(#svg_77)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.72" rx="6" ry="6" id="svg_69"/>

        <rect x="860.5" y="344" width="11" height="106" id="svg_70" 
              fill="url(#svg_77)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.88" rx="6" ry="6"/>


        <rect x="863.5" y="345" width="79" height="10" 
              fill="url(#svg_77)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.88" id="svg_72"/>

        <line x1='865.5' y1='345' x2='865.5' y2='450' stroke-width='11.5' stroke='SKYBLUE'>
        <animate attributeName='stroke-dasharray' begin='G.click' end='S.click' dur='3s' values='2, 2,2,2; 3' repeatCount="indefinite"/>	  
        </line>



        <line x1='861' y1='350' x2='942.5' y2='350' stroke-width='10' stroke='SKYBLUE'>
        <animate attributeName='stroke-dasharray' begin='G5.click' end='S5.click' dur='3s' values='2, 2,2,2; 3' repeatCount="indefinite"/>	  
        </line>

        <g id="G5">
        <rect x="1140" y="150" height="19" width="45" fill="green"/>
        <text x="1146" y="165" font-size="18" fill="white">ON
        </g>
        <g id="S5">
        <rect x="1190" y="150" height="19" width="45" fill="red"/>
        <text x="1191" y="165" font-size="18" fill="white">OFF
        </g>
        <!--<line x1='860' y1='452' x2='940' y2='452' stroke-width='15' stroke='skyblue'>
           <animate attributeName='stroke-dasharray' begin='G.click' end='S.click' dur='3s' values='2, 2,2,2; 3' repeatCount="indefinite"/>
         </line>-->

        <!-- animation for dynamic water flow at outlet -->


        <!---- pipe for C.V raman nager------>

        <!---<rect x="861.5" y="447" width="79" height="11" 
              fill="url(#svg_77)" stroke="#000000" stroke-width="0" stroke-dasharray="null" fill-opacity="0.87" id="svg_73"/>-->

        <rect x="284.5" y="15.5" width="39" height="8" id="svg_74"
              fill="#ff0000" stroke="#000000" stroke-width="0" stroke-dasharray="null"/>

        <text x="730.66918" y="505.98288" id="svg_78" fill="#000000" stroke="#000000" stroke-width="0" 
              stroke-dasharray="null" font-size="15" font-family="Serif" text-anchor="middle" xml:space="preserve" font-weight="normal"
              transform="matrix(1.04211, 0, 0, 1.10877, -29.2106, -53.1205)">PUMP2</text>

        <text x="1057" y="156" id="svg_78" fill="BLUE" stroke="#000000" stroke-width="0" 
              stroke-dasharray="null" font-size="20" font-family="Serif" text-anchor="middle" xml:space="preserve" font-weight="normal"
              transform="matrix(1.04211, 0, 0, 1.10877, -29.2106, -53.1205)">PUMP2</text>

        <text x="1060" y="181" id="svg_78" fill="BLUE" stroke="#000000" stroke-width="0" 
              stroke-dasharray="null" font-size="20" font-family="Serif" text-anchor="middle" xml:space="preserve" font-weight="normal"
              transform="matrix(1.04211, 0, 0, 1.10877, -29.2106, -53.1205)">VALVE1</text>

        <text x="1060" y="201" id="svg_78" fill="BLUE" stroke="#000000" stroke-width="0" 
              stroke-dasharray="null" font-size="20" font-family="Serif" text-anchor="middle" xml:space="preserve" font-weight="normal"
              transform="matrix(1.04211, 0, 0, 1.10877, -29.2106, -53.1205)">VALVE2</text>

        <text x="1072" y="223" id="svg_78" fill="BLUE" stroke="#000000" stroke-width="0" 
              stroke-dasharray="null" font-size="20" font-family="Serif" text-anchor="middle" xml:space="preserve" font-weight="normal"
              transform="matrix(1.04211, 0, 0, 1.10877, -29.2106, -53.1205)">INJECTOR</text>

        <text id="svg_79" transform="matrix(1.04211, 0, 0, 1.07747, -29.2106, -44.931)" font-weight="normal" xml:space="preserve" text-anchor="middle"
              font-family="Serif" font-size="15" stroke-dasharray="null" stroke-width="0"
              stroke="#000000" fill="#000000" y="420.55118" x="725.87121">PUMP1</text>

        <text x="1057" y="136" id="svg_78" fill="BLUE" stroke="#000000" stroke-width="0" 
              stroke-dasharray="null" font-size="21" font-family="Serif" text-anchor="middle" xml:space="preserve" font-weight="normal"
              transform="matrix(1.04211, 0, 0, 1.10877, -29.2106, -53.1205)">PUMP1</text>





        <!----all connector for pipe--->
        <rect x="209.38333" y="190.88333" width="11" height="31" id="svg_9" fill="#0048ff" stroke="#cccccc" stroke-width="0"/>
        <rect x="293.38332" y="355.88333" width="29" height="11" fill="#0048ff" stroke="#cccccc" stroke-width="0" id="svg_10"/>
        <rect x="294.38332" y="457.88333" width="27" height="27" fill="#0048ff" stroke="#cccccc" stroke-width="0" id="svg_11"/>
        <rect x="519.38332" y="458.88333" width="27" height="27" fill="#0048ff" stroke="#cccccc" stroke-width="0" id="svg_12"/>
        <rect x="518.38332" y="360.88333" width="27" height="27" fill="#0048ff" stroke="#cccccc" stroke-width="0" id="svg_14"/>

        <!-----chlorine tank and connector minor design--->
        <rect id="svg_15" x="255.38331" y="135.88333" width="23" height="11" fill="#0048ff" stroke="#cccccc" stroke-width="0"/>
        <rect id="svg_17" x="342.38331" y="135.88333" width="23" height="11" fill="#0048ff" stroke="#cccccc" stroke-width="0"/>

        <rect id="svg_19" x="560.3833" y="37.88334" width="9" height="39" fill="url(#svg_40)" stroke="#cccccc" stroke-width="0"
              fill-opacity="0.54" rx="2" ry="2"/>

        <rect fill-opacity="0.76" stroke-dasharray="null" stroke-width="0.5" stroke="#cccccc" fill="#000000" 
              id="svg_20" height="9" width="59" y="400.83333" x="628.58333"/>

        <rect id="svg_21" fill-opacity="0.76" stroke-dasharray="null" stroke-width="0.5" 
              stroke="#cccccc" fill="#000000" height="9" width="59" y="499.83333" x="633.58333"/>

        
        <rect ry="7" rx="7" stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#6565f2" 
              id="svg_26" height="19" width="34" y="345.25" x="822.75"/>

        <rect stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#00ff00" 
              id="svg_30" height="17" width="4" y="178.25" x="95.74997"/>

        <rect stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#00ff00" 
              id="svg_36" height="3" width="22" y="178.25" x="85.75"/>

        <rect x="561.75" y="36.25" width="80.00001" height="9" id="svg_59" fill="url(#svg_40)" stroke="#cccccc" stroke-width="0" 
              stroke-dasharray="null" fill-opacity="0.54" rx="2" ry="2"/>


        <ellipse cx="646.75" cy="40.25" id="svg_60" fill="url(#svg_40)" stroke="#cccccc" stroke-width="0" 
                 stroke-dasharray="null" rx="9" ry="10" fill-opacity="0.54"/>

        <text id="svg_44" transform="matrix(1.08586, 0, 0, 1.06065, -80.2747, -25.8033)" font-weight="normal" xml:space="preserve" 
              text-anchor="middle" font-family="Serif" font-size="15" fill-opacity="0.79" stroke-dasharray="null" stroke-width="0"
              stroke="#cccccc" fill="BLACK" y="358.68541" x="1035.04071">DISTRIBUTION CENTER 2</text>

        <text id="svg_61" transform="matrix(1.08586, 0, 0, 1.06099, -80.2747, -26.007)" font-weight="normal" xml:space="preserve"
              text-anchor="middle" font-family="Serif" font-size="15" fill-opacity="0.79" stroke-dasharray="null" stroke-width="0" 
              stroke="#cccccc" fill="#000000" y="458.04913" x="1035.04071"><a href="http://C.V Raman Nagar SLD">DISTRIBUTION CENTER 1</a></text>

        <!--------pipe Wall--->
        <rect stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#6565f2" id="svg_67" height="21" width="4" y="344.25" x="819.75"/>
        <rect id="svg_68" stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#6565f2" height="21" width="4" y="344.25" x="855.75"/>
        <rect id="svg_76" ry="7" rx="7" stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#6565f2" height="27" width="34" y="194.25" x="80.75"/>
        <rect id="svg_80" stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#6565f2" height="26" width="4" y="195.25" x="77.75"/>
        <rect id="svg_82" stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#00ff00" height="17" width="4" y="328.25" x="838.74997"/>
        <rect x="828.75" y="328.25" width="22" height="3" fill="#00ff00" stroke="#cccccc" stroke-width="0.3" stroke-dasharray="null" id="svg_83"/>
        <rect x="837.74997" y="424.25" width="4" height="17" fill="#00ff00" stroke="#cccccc" stroke-width="0.3" stroke-dasharray="null" id="svg_84"/>
        <rect x="827.75" y="424.25" width="22" height="3" fill="#00ff00" stroke="#cccccc" stroke-width="0.3" stroke-dasharray="null" id="svg_85"/>
        <rect id="svg_86" ry="7" rx="7" stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#6565f2" height="19" width="34" y="440.25" x="822.75"/>
        <rect id="svg_87" stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#6565f2" height="21" width="4" y="439.25" x="819.75"/>
        <rect id="svg_88" stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#6565f2" height="21" width="4" y="439.25" x="855.75"/>
        <rect id="svg_89" stroke-dasharray="null" stroke-width="0.3" stroke="#cccccc" fill="#6565f2" height="26" width="4" y="195.25" x="114.75"/>

        <!-----animation for water tank level --->
        <rect x="219.60244" y="146.09079" width="185.00001" height="137" transform="rotate(-180 215,160)" rx="3" ry="3" style="fill:lightblue"> 
        <animate attributeName="x" attributeType="XML" begin="0s" dur="0s" fill="freeze" from="25" to="25" /> 
        <animate attributeName="y" attributeType="XML" begin="0s" dur="0.01s" fill="freeze" from="137" to="0" />
        <animate attributeName="height" attributeType="XML" begin="G3.click" end="S3.click" dur="20s" fill="freeze" from="60" to="137" repeatCount="indefinite"/> 		
        </g>
        <!----------valuw ontrol------>
        <g>
        <text x="66" y="240" font-size="15" fill="yellow">Inlet Flow:
        </g>
        <g>
        <text x="410" y="210" font-size="15" fill="yellow">Tank level:
        </g>
        <g>
        <text x="610" y="110" font-size="15" fill="yellow">Chlorine Injector:
        </g>
        <g>
        <text x="880" y="430" font-size="15" fill="yellow">Outlet Flow:
        </g>
        <g>
        <text x="70" y="170" font-size="15" fill="black">Valve1
        </g>
        <g>
        <text x="820" y="320" font-size="15" fill="black">Valve2
        </g>
        </svg>
        </svg>
         
    </center>
    <style>





        table {
            margin-top:30px; 

            width: 100%; 
            border-collapse: collapse; 
        }


        tr:nth-of-type(odd) { 
            background: #eee; 
            font-size:16px;
        }
        tr:nth-of-type(even) { 
            background: #ccc; 
            font-size:16px;
        }
        th { 
            background:blue; 
            color: white; 
            font-size:16px;
        }
        td, th { 
            padding: 0px; 
            border: 2px solid #ccc; 
            text-align: center; 
        }
    </style>
    <table style="width: 100%" cellpadding="0" cellspacing="0" >
        <thead>
        <th>Tag_ID</th>
        <th>Time Stamp</th>
        <th>Message</th>
        <th>Status</th>
    </tr>

</thead>
</table>

<div style="overflow: auto; height: 83px; width: 100%;">
    <table style="width: 100%;" cellpadding="0" cellspacing="0">
        <tr>
            <td>T101</td>

            <td>19:30:11</td>

            <td>High value</td>
            <td>True</td>
        </tr>

        <tr>
            <td>T101</td>

            <td>19:30:11</td>

            <td>High value</td>
            <td>True</td>
        </tr>

        <tr>
            <td>T101</td>

            <td>19:30:11</td>

            <td>High value</td>
            <td>True</td>
        </tr>

        <tr>
            <td>T101</td>

            <td>19:30:11</td>

            <td>High value</td>
            <td>True</td>
        </tr>

        </tbody>
</div>
</table>
</div>     

</body>
</html>
