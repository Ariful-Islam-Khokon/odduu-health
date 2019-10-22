<%-- 
    Document   : movieSeduleAdding
    Created on : May 28, 2018, 1:59:37 AM
    Author     : aik
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <body onload="tabHidding()">
        <div style="float: right"><a href="login.jsp"><img src="img/logout.png" alt="" width="100" height="60"/></a></div>
        
        <!--  main div  -->
        <div class="container" style="background-color: #a6e1ec;width: 100%">
           
            
            <h1 style="text-align: center"> Doctor Adding Panel</h1>
            <!--  movie adding div  -->
            <div style="border:1px solid #dedede;margin:5px 0 10px 10px;float:left;width: 30%;">
                <h4 style="text-align: center">Adding Doctor</h4>
                <div id="tab1">
                    <form  action="madding.htm" style="margin: 20px">
                        <table>
                            <tr>
                                <td>Doctor Name:</td><td><input type="text" name="name"></td>
                            </tr>
                            <tr>
                                <td>Specialist:</td><td><input type="text" name="specialist"></td>
                            </tr>
                            <tr>
                                <td>Degree:</td><td><input type="text" name="degree"></td>
                            </tr>
                            <tr>
                                <td>Visiting Day:</td><td><input type="text" name="day"></td>
                            </tr>
                            <tr>
                                <td>Visiting Time:</td><td><input type="text" name="vtime"></td>
                            </tr>
                            <tr>
                                <td>Fees:</td><td><input type="text" name="charge"></td>
                            </tr>
                            <tr><td><br/></td></tr>
                            <tr>
                                <td></td><td ><input type="submit" value="Add Doctor" style="background-color: #135796;color: white;padding: 6px; border-radius: 6px;"></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div id="tab2">
                    <form  action="mUpdate.htm" style="margin: 20px; float: left">
                        <c:forEach items="${sdoc}" var="ud">
                            <table>
                               <tr >
                               <input type="text" name="id" value="${ud.id}" hidden="">
                                </tr>
                                <tr>
                                    <td>Doctor Name:</td><td><input type="text" name="name" value="${ud.name}"></td>
                                </tr>
                                <tr>
                                    <td>Specialist:</td><td><input type="text" name="specialist" value="${ud.specialist}"></td>
                                </tr>
                                <tr>
                                    <td>Degree:</td><td><input type="text" name="degree" value="${ud.degree}"></td>
                                </tr>
                                <tr>
                                    <td>Visiting Day:</td><td><input type="text" name="day" value="${ud.day}"></td>
                                </tr>
                                <tr>
                                    <td>Visiting Time:</td><td><input type="text" name="vtime" value="${ud.vtime}"></td>
                                </tr>
                                <tr>
                                    <td>Fees:</td><td><input type="text" name="charge" value="${ud.charge}"></td>
                                </tr>
                                <tr><td><br/></td></tr>
                                <tr>
                                    <td></td><td ><input type="submit" value="Update Info" style="background-color: #009966;color: white;padding: 6px; border-radius: 6px;"></td>
                                </tr>
                            </table>
                        </c:forEach>

                        <input type="text" id="vtster"  value="${vis}" hidden=""/><!-- that one for hiding or visible tab1 or tab 2 id -->
                    </form>
                </div>
            </div>   


            <!-- show result div  -->
            <div  style=" margin: auto">
                <table  class="table" >
                    <tr>
                        <th>Doctor Id</th>
                        <th>Doctor Name</th>
                        <th>Specialist</th>
                        <th>Degree</th>
                        <th>Visiting Day</th>
                        <th>Visiting Time</th>
                        <th>Fees</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${bi}" var="a">
                        <tr>
                            <td>${a.id}</td>
                            <td>${a.name}</td>
                            <td>${a.specialist}</td>
                            <td>${a.degree}</td>
                            <td>${a.day}</td>
                            <td>${a.vtime}</td>
                            <td>${a.charge}</td>
                            <td><a style="background-color: #009966;color: white;padding: 6px; border-radius: 6px;" href="mEdit.htm?id=${a.id}">Edit</a> || <a style="background-color: #990033;color: white;padding: 6px; border-radius: 6px;" href="maddingdelte.htm?id=${a.id}">Delete</a></td>
                        </tr>

                    </c:forEach>
                </table>
            </div> 

        </div>




        <script>

            //table hidding function
            function tabHidding() {
                var val = document.getElementById("vtster").value;
                if (val == "vis") {
                    document.getElementById("tab1").style.display = "none";
                    document.getElementById("tab2").style.display = "block";
                }
                if (val == "hid") {
                    document.getElementById("tab1").style.display = "block";
                    document.getElementById("tab2").style.display = "none";
                }

            }

        </script>  


    </body>
</html>
