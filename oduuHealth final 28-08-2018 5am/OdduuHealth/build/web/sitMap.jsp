<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/main.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script> 
        <script src="resources/js/angular.min.js" type="text/javascript"></script>
        <style>


        </style>

    </head>
    <body ng-app="myApp" ng-controller="myCtrl" >
        <div class="col-lg-6 col-md-6 col-sm-12" style="border:1px solid #dedede" >
            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                 width="500px" height="480px" viewBox="0 0 460 420" enable-background="new 0 0 460 420" xml:space="preserve">
            <path fill="#5DC7D6" stroke="#000000" stroke-miterlimit="10" d="M34.574,102.705V364.72h393.023V102.705H34.574z M350.689,124.734
                  l24.031,12.473l25.582-12.473v45.736l-24.031-12.473l-25.582,12.473V124.734z M277.598,124.734l24.031,12.473l25.58-12.473v45.736
                  l-24.029-12.473l-25.582,12.473V124.734z M204.628,124.734l24.03,12.473l25.582-12.473v45.736l-24.031-12.473l-25.581,12.473
                  V124.734z M131.76,124.734l24.031,12.473l25.582-12.473v45.736l-24.031-12.473L131.76,170.47V124.734z M59.667,124.734
                  l24.031,12.473l25.582-12.473v45.736l-24.031-12.473L59.667,170.47V124.734z M108.729,336.013L84.698,323.54l-25.582,12.473v-45.735
                  l24.031,12.473l25.582-12.473V336.013z M109.442,279.873L85.412,267.4L59.83,279.873v-45.736l24.031,12.474l25.582-12.474V279.873z
                  M109.993,224.06l-24.031-12.474L60.38,224.06v-45.736l24.031,12.473l25.582-12.473V224.06z M180.822,336.013l-24.031-12.473
                  l-25.582,12.473v-45.735l24.031,12.473l25.582-12.473V336.013z M181.535,279.873L157.504,267.4l-25.582,12.473v-45.736
                  l24.031,12.474l25.582-12.474V279.873z M182.085,224.06l-24.031-12.474l-25.582,12.474v-45.736l24.031,12.473l25.582-12.473V224.06z
                  M253.689,336.013l-24.03-12.473l-25.582,12.473v-45.735l24.031,12.473l25.581-12.473V336.013z M254.402,279.873l-24.03-12.473
                  l-25.582,12.473v-45.736l24.031,12.474l25.581-12.474V279.873z M254.953,224.06l-24.03-12.474l-25.582,12.474v-45.736l24.031,12.473
                  l25.581-12.473V224.06z M326.658,336.013l-24.029-12.473l-25.582,12.473v-45.735l24.031,12.473l25.58-12.473V336.013z
                  M327.371,279.873L303.342,267.4l-25.582,12.473v-45.736l24.031,12.474l25.58-12.474V279.873z M327.922,224.06l-24.029-12.474
                  l-25.582,12.474v-45.736l24.031,12.473l25.58-12.473V224.06z M399.752,336.013l-24.031-12.473l-25.582,12.473v-45.735l24.031,12.473
                  l25.582-12.473V336.013z M400.465,279.873L376.434,267.4l-25.582,12.473v-45.736l24.031,12.474l25.582-12.474V279.873z
                  M401.016,224.06l-24.031-12.474l-25.582,12.474v-45.736l24.031,12.473l25.582-12.473V224.06z"/>
            <polygon ng-click="addId(2)" id="2" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="181.372,170.47 181.372,124.734 155.791,137.208 
                     131.76,124.734 131.76,170.47 157.341,157.997 "/>
            <polygon ng-click="addId(3)" id="3" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="254.24,170.47 254.24,124.734 228.659,137.208 
                     204.628,124.734 204.628,170.47 230.209,157.997 "/>
            <polygon ng-click="addId(4)" id="4" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="327.209,170.47 327.209,124.734 301.629,137.208 
                     277.598,124.734 277.598,170.47 303.18,157.997 "/>
            <polygon ng-click="addId(5)" id="5" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="400.303,170.47 400.303,124.734 374.721,137.208 
                     350.689,124.734 350.689,170.47 376.271,157.997 "/>
            <polygon ng-click="addId(1)" id="1" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="109.279,170.47 109.279,124.734 83.698,137.208 
                     59.667,124.734 59.667,170.47 85.249,157.997 "/>
            <polygon ng-click="addId(7)" id="7" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="132.473,178.324 132.473,224.06 158.055,211.586 
                     182.085,224.06 182.085,178.324 156.504,190.797 "/>
            <polygon ng-click="addId(8)" id="8" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="205.341,178.324 205.341,224.06 230.923,211.586 
                     254.953,224.06 254.953,178.324 229.373,190.797 "/>
            <polygon ng-click="addId(9)" id="9" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="278.311,178.324 278.311,224.06 303.893,211.586 
                     327.922,224.06 327.922,178.324 302.342,190.797 "/>
            <polygon ng-click="addId(10)" id="10" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="351.402,178.324 351.402,224.06 376.984,211.586 
                     401.016,224.06 401.016,178.324 375.434,190.797 "/>
            <polygon ng-click="addId(6)" id="6" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="60.38,178.324 60.38,224.06 85.962,211.586 
                     109.993,224.06 109.993,178.324 84.411,190.797 "/>
            <polygon ng-click="addId(12)" id="12" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="131.923,234.137 131.923,279.873 157.504,267.4 
                     181.535,279.873 181.535,234.137 155.954,246.61 "/>
            <polygon ng-click="addId(13)" id="13" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="204.791,234.137 204.791,279.873 230.373,267.4 
                     254.402,279.873 254.402,234.137 228.822,246.61 "/>
            <polygon ng-click="addId(14)" id="14" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="277.76,234.137 277.76,279.873 303.342,267.4 
                     327.371,279.873 327.371,234.137 301.791,246.61 "/>
            <polygon ng-click="addId(15)" id="15" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="350.852,234.137 350.852,279.873 376.434,267.4 
                     400.465,279.873 400.465,234.137 374.883,246.61 "/>
            <polygon ng-click="addId(11)" id="11" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="59.83,234.137 59.83,279.873 85.412,267.4 
                     109.442,279.873 109.442,234.137 83.861,246.61 "/>
            <polygon ng-click="addId(17)" id="17" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="131.209,290.277 131.209,336.013 156.791,323.54 
                     180.822,336.013 180.822,290.277 155.24,302.75 "/>
            <polygon ng-click="addId(18)" id="18" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="204.078,290.277 204.078,336.013 229.66,323.54 
                     253.689,336.013 253.689,290.277 228.109,302.75 "/>
            <polygon ng-click="addId(19)" id="19" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="277.047,290.277 277.047,336.013 302.629,323.54 
                     326.658,336.013 326.658,290.277 301.078,302.75 "/>
            <polygon ng-click="addId(20)" id="20" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="350.139,290.277 350.139,336.013 375.721,323.54 
                     399.752,336.013 399.752,290.277 374.17,302.75 "/>
            <polygon ng-click="addId(16)" id="16" fill="#A62B91" stroke="#000000" stroke-miterlimit="10" points="59.117,290.277 59.117,336.013 84.698,323.54 
                     108.729,336.013 108.729,290.277 83.147,302.75 "/>
            <text transform="matrix(1 0 0 1 80.311 152.3174)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">1</text>
            <text transform="matrix(1 0 0 1 298.1406 152.3174)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">4</text>
            <text transform="matrix(1 0 0 1 150.8535 152.3174)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">2</text>
            <text transform="matrix(1 0 0 1 223.9468 152.3174)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">3</text>
            <text transform="matrix(1 0 0 1 371.0078 152.3174)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">5</text>
            <text transform="matrix(1 0 0 1 80.311 205.8057)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">6</text>
            <text transform="matrix(1 0 0 1 152.8535 206.8057)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">7</text>
            <text transform="matrix(1 0 0 1 225.9468 206.8057)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">8</text>
            <text transform="matrix(1 0 0 1 298.1396 206.8057)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">9</text>
            <text transform="matrix(1 0 0 1 367.1328 206.8057)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">10</text>
            <text transform="matrix(1 0 0 1 75.6592 263.1699)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">11</text>
            <text transform="matrix(1 0 0 1 146.9771 263.1699)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">12</text>
            <text transform="matrix(1 0 0 1 219.8452 263.1699)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">13</text>
            <text transform="matrix(1 0 0 1 292.7139 263.1699)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">14</text>
            <text transform="matrix(1 0 0 1 367.1328 263.1699)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">15</text>
            <text transform="matrix(1 0 0 1 75.6592 319.209)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">16</text>
            <text transform="matrix(1 0 0 1 145.8535 319.209)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">17</text>
            <text transform="matrix(1 0 0 1 219.8452 319.209)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">18</text>
            <text transform="matrix(1 0 0 1 293.1406 319.209)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">19</text>
            <text transform="matrix(1 0 0 1 367.1328 319.209)" fill="#FFFFFF" font-family="'MyriadPro-Regular'" font-size="18">20</text>
            <text transform="matrix(1 0 0 1 136.6475 94.3828)"><tspan x="0" y="0" font-family="'ScriptMTBold'" font-size="21">Select</tspan><tspan x="47.517" y="0" font-family="'SegoeMDL2Assets'" font-size="21"> </tspan><tspan x="53.269" y="0" font-family="'ScriptMTBold'" font-size="21">Your</tspan><tspan x="97.032" y="0" font-family="'SegoeMDL2Assets'" font-size="21"> </tspan><tspan x="102.785" y="0" font-family="'ScriptMTBold'" font-size="21">Serial</tspan><tspan x="152.722" y="0" font-family="'SegoeMDL2Assets'" font-size="21"> </tspan><tspan x="158.474" y="0" font-family="'ScriptMTBold'" font-size="21">No.</tspan></text>
            <text transform="matrix(1 0 0 1 92.2793 51.7021)" fill="#BE1E2D" font-family="'MyriadPro-Regular'" font-size="36">ODDUU HEALTH</text>
            </svg>
        </div>

        <div  class="col-lg-6 col-md-6 col-sm-12" style="border:1px solid #dedede">
            <div  class="col-lg-offset-3 col-md-offset-3 col-sm-offset-6"> <img src="img/odoLogo.png" alt="" width="300" height="150"/></div>
            <c:forEach items="${sdoc}" var="di">
            <div>
                
            <h4 style="text-align:center">Appoinment Information</h4>
            <h4 style="text-align:center"></h4>
            <h2 style="text-align:center"><span style="color: blue"> ${dnam} </span> </h2>
            <h5 style="text-align:center">${di.degree}</h5>
            <div style="text-align:center">Visiting date: <span style="color: blue; font-size:24pt"> ${md} </span> and time: <span style="color: blue; font-size: 24pt"> ${mt} </span>Fees: <span style="color: blue"> ${charge}</span></div>
             <br/>
            <div style="text-align:right"> <span style=" font-size:60pt">${aals} </span>Apoints Available</div>
            


            
            
            <input id="soldS" value="${ssit}" hidden=""><!--hidding Solded Seat-->
            <input id="fees" value="${charge}" hidden=""><!--hidding Charge or fees Seat-->
            </div>
            </c:forEach>

        </div>
        <!-- cart div start  -->
        <div class=" col-sm-12 " style="background-color: #dedede; margin:10px 0; padding:10px  ">
            <h4 style="text-align:center">Selected Serial</h4>
            <div class="col-lg-1 col-sm-1 col-md-1" style="float: left">                       
                <button class="btn btn-default btn-block" type="submit" onclick="reloadF()"><span class="glyphicon glyphicon-refresh"></span></button> 
            </div>

            <div class="col-lg-9 col-sm-9 col-md-9" style="float: left"> 

                <div ng-repeat="x in lines" id="cssforsit">{{x}}</div>

                <div class="col-lg-2 col-sm-2 col-md-2" style="float: right"><h4 style="text-align:center">Total: <span id="billspan">0</span> TK</h4></div>

            </div> 

            <div class="col-lg-1 col-sm-1 col-md-1" style="float: right">
                <form action="gobilling.htm">  
                    <!-- will be hidden -->
                    <input type="text" value="{{lines}}" id="idval" name="idval" hidden=""/>
                    <input type="text" id="bill" name="billc"  value="{{lines}}" hidden=""/>
                    <input type="text" id="" name="movieName" value="${dnam}" hidden=""/>
                    <input type="text" id="" name="showDate" value="${md}" hidden=""/>
                    <input type="text" id="" name="sTime" value="${mt}" hidden=""/>
                    <input type="text"  value="${mnum}" name="userNumber" hidden=""/>
                    <input type="text" id="avSit" value="${uavs}" hidden=""/>
                    <input type="text" id="uname" value="${userName}" hidden=""/>
                    <input type="text" value="${id}" name="id" hidden=""/>
                    <button class="btn btn-default btn-block" type="submit" onclick=""><span class="glyphicon glyphicon-ok"></span></button> 
                </form> 
            </div>
        </div> 
        <!-- cart div End  -->

        <script>

            function callfs(val) {
                document.getElementById("idv").value = +document.getElementById("idv").value + "," + val;
            }
            function callfst(val) {
                document.getElementById("mt").value = val;
            }

            function reloadF() {
                location.reload();
            }


        </script>         

        <script>
            var app = angular.module("myApp", []);
            app.controller("myCtrl", function ($scope) {
                $scope.foo = "I'm foo!";
                $scope.lines = [];
                $scope.result = [];
                $scope.count = 0;
                $scope.bill = 0;
                $scope.sbill = 0;
                $scope.uname = document.getElementById("uname").value;
                $scope.uavsit = parseInt(document.getElementById("avSit").value);
                $scope.sbill= parseInt(document.getElementById("fees").value);



               //finding soldedsit
                $scope.sslds = document.getElementById("soldS").value;
                if ($scope.sslds.length > 0) {
                    $scope.result = $scope.sslds.split(",");
                    //off color for sold seats
                    var i;
                    for (i = 0; i < $scope.result.length; i++) {
                        document.getElementById($scope.result[i]).style.fill = "#CCCCCC";
                    }
                }


                //add cart function
                $scope.addId = function (text) {
                    var ln = $scope.lines.length;
                    
            //can not select soded seat
                    if ($scope.result.indexOf("" + text) < 0) {
                        //can not select a seat twice it will then back its own color
                        if ($scope.lines.indexOf(text) > -1) {


                            //for reback seat color
                            
                                document.getElementById(text).style.fill = "#A62B91";
                            

                            //for diselect seat
                            var index = $scope.lines.indexOf(text);
                            $scope.lines.splice(index, 1);
                            $scope.bill = $scope.bill - $scope.sbill;
                            document.getElementById("bill").value = $scope.bill;
                            document.getElementById("billspan").innerHTML = $scope.bill;
                        } else {
                            //when a seat is  selected
                            if (ln < $scope.uavsit) { 
                                $scope.foo = text;
                                $scope.lines[ln] = $scope.foo;
                                $scope.bill = $scope.bill + $scope.sbill;
                                document.getElementById("bill").value = $scope.bill;
                                document.getElementById("billspan").innerHTML = $scope.bill;
                                document.getElementById(text).style.fill = "#efb404";
                            } else {
                                if ($scope.uavsit == 0) {
                                    window.alert("Hi " + $scope.uname + "\n....................................\nYou can't book any appointment for this schedule\n....................................\nYou have already booked  " + (4 - $scope.uavsit) + "  appointment");
                                } else if ($scope.uavsit == 4) {
                                    window.alert("Hi " + $scope.uname + "\n....................................\nYou can book  " + $scope.uavsit + "  appointment(max)  for this schedule");
                                } else {
                                    window.alert("Hi " + $scope.uname + "\n....................................\nYou can book another  " + $scope.uavsit + "  appointment(max) for this schedule\n....................................\nYou have already booked " + (4- $scope.uavsit) + "  appointment");
                                }


                            }
                        }

                    }



                };
            });
        </script>   


    </body>
</html>
