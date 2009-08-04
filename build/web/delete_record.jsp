<%--
    Document   : nnumber_lookup
    Created on : Jun 8, 2009, 1:04:33 PM
    Author     : fdorigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link href="resources/stylesheet.css" rel="stylesheet" type="text/css">
        <script src="resources/equalcolumns.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Record</title>
    </head>
    <body>
        <div id="wrapper">
        <%@ page import="business.*" %>

        <%
        Aircraft aircraft = (Aircraft) request.getAttribute("aircraft");
        String message = (String) request.getAttribute("message");

        if (aircraft == null) {
            aircraft = new Aircraft();
        }

        if (message == null) {
            message = "Please enter the N-Number of the record to delete";
        }
        %>
        <div id="banner">
        <h1>Remove Recodrd From Database</h1>
        </div> <!-- banner -->

        <div id="contentwrapper">

        <div id="leftcolumn">
            <h3>Menu</h3>
            <a class="list" href="admin.jsp?clearPage=true">Home / Admin</a> <br>
            <a class="list" href="nnumber_lookup.jsp">Register New User</a> <br>
            <a class="list" href="register_user.jsp?updateRecord=false">Register (no N-Number)</a> <br>

            <h3>Info</h3>
            <p>
                Delete at your own risk...
            </p>
        </div> <!-- leftcolumn -->

        <div id="maincolumn">

        <div id="feedback">
        <%= message %>
        </div> <!-- feedback -->

        <form action="deleteRecord" method="post">
            <table cellspacing="5" border="0">
                <tr>
                    <td>N-Number:</td>
                    <td><input type="text" name="nNumber" value="<%= aircraft.getNNumber()%>"></td>
                </tr>
                <tr>
                    <td style="width:90px;"></td>
                    <td><input style="width:205px;" type="submit" name="deleteParam" value="Expunge Record"></td>
                </tr>
                <tr>
                    <td style="width:90px;"></td>
                    <td><input style="width:205px;" type="submit" name="deleteParam" value="Clear Score"></td>
                </tr>
            </table>
        </form>
        </div> <!-- maincontent -->
        </div> <!-- contentwrapper -->
        <div id="footer">
           Created by <a href="http://francescodorigo.com"> Francesco Dorigo </a>
        </div> <!-- footer -->
        </div> <!-- wrapper -->
    </body>
</html>
