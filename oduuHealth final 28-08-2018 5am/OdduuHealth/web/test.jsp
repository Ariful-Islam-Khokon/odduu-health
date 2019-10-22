<%-- 
    Document   : test.jsp
    Created on : Jun 8, 2018, 2:26:58 AM
    Author     : aik
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container" style="background-color: #c4e3f3">
        <h1 style="text-align:center">Confirming Page</h1>
        <div class="col-md-6 col-lg-6 col-sm-11" style="border:1px solid #dedede;margin:10px 0 10px 20px;padding:20px; float: left">
            <table>
                <label style="text-align:center;font-size:20px">Selected Seat information</label>
                <tr>
                    <td>Appointment Date </td><td style="font-family:fantasy;padding-left: 20px"> ${md}</td>
                </tr>
                <tr> 
                    <td>Doctor Name: </td><td style="font-family:fantasy ;padding-left: 20px">${mn}</td>
                </tr>
                <tr>   
                    <td>Visiting Time: </td><td style="font-family:fantasy ;padding-left: 20px">${mt}</td>
                </tr>
                <tr>  
                    <td>Serial Number: </td><td style="font-family:fantasy ; padding-left: 20px">${sitid}</td>
                </tr>
                <tr>  
                    <td>User Name: </td><td style="font-family:fantasy;padding-left: 20px">${userName}</td>
                </tr>
                <tr>  
                    <td>Mobile Number: </td><td style="font-family:fantasy;padding-left: 20px">${mnum}</td>
                </tr>
                <tr> 
                    <td>Total Bill: </td><td style="font-family:fantasy; padding-left: 20px">${bl}</td>
                </tr>
                <tr> 
                    <td>Total Appoints: </td><td style="font-family:fantasy; padding-left: 20px">${ts}</td>
                </tr>

                
            </table> 
        </div>

        <div class="col-md-3 col-lg-3 col-sm-11" style="border:1px solid #dedede;margin:10px 10px 10px 20px;float: left">
            <div class="m-tickets-instantly" style="border:none;">
                <h4 style="margin:30px 0 30px 40px;">Confirm With Card Number</h4>                            
                <div class="clearfix"></div>


                <form action="confirm.htm">                          
                    <table>
                        <tr>
                            <td>Card Number: </td><td><input type="text" placeholder="Demo 12345"  name="" /></td>                   
                        </tr>
                        <tr>
                            <td>Card Pin: </td><td><input type="text" placeholder="Demo 123"  name="" /></td>                   
                        </tr>
                    </table> 

                    <!-- thats field will be hiden -->
                    <input type="text"  value="${md}" name="showDate" hidden=""/>
                    <input type="text"  value="${mn}" name="movieName" hidden=""/>
                    <input type="text"  value="${mt}" name="sTime" hidden=""/>
                    <input type="text"  value="${sitid}" name="idval" hidden=""/>
                    <input type="text"  value="${userName}" name="user" hidden=""/>
                    <input type="text"  value="${mnum}" name="mobile" hidden=""/>
                    <input type="text"  value="${bl}" name="billc" hidden=""/>
                    <input type="text"  value="${ts}" name="tsit" hidden=""/>
                    <input type="text"  value="${id}" name="id" hidden=""/>
                    


                    <div class="col-md-12" style="margin:9px 0; padding:0;">
                        <button class="btn btn-default btn-block" type="submit" onclick=""><span class="glyphicon glyphicon-search"></span> Confirm Buy </button>
                    </div>
                </form>                        

            </div>  
        </div>
           </div>         
    </body>
</html>
