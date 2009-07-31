<%-- 
    Document   : register
    Created on : May 16, 2009, 10:51:19 AM
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
        <title>Aircraft Owner Registration Form</title>
    </head>

    <body>
        <%@ page import="business.*" %>

        <%
        User user = (User) request.getAttribute("user");
        Aircraft aircraft = (Aircraft) request.getAttribute("aircraft");
        String message = (String) request.getAttribute("message");

        if (user == null) {
            user = new User();
        }

        if (aircraft == null) {
            aircraft = new Aircraft();
        }

        if (message == null) {
            message = "The following information was added to the database";
        }

        message = "The following information was added to the database";
        %>

        <div id="wrapper">

        <div id="banner">
        <h1>Registration Confirmation</h1>
        </div> <!-- banner -->

        <div id="contentwrapper">

        <div id="leftcolumn">
            <h3>Menu</h3>
            <a class="list" href="admin.jsp">Home / Admin</a> <br>
            <a class="list" href="nnumber_lookup.jsp">Register New User</a> <br>
            <a class="list" href="register_user.jsp?updateRecord=false">Register (no N-Number)</a> <br>

            <h3>Info</h3>
            <p>
                If the data looks correct you are done.
            </p>
            <p>
                To modify the data, click the "Edit This Record" button. 
            </p>
        </div> <!-- leftcolumn -->

        <div id="maincolumn">

        <div id="feedback">
        <%= message %>
        </div> <!-- feedback -->

        <table width="510" cellspacing="0" cellpadding="8" border="0">
        <tr bgcolor="#FAFAFF">
            <td>
                <form action="nnumber_lookup.jsp" method="post">
                    <input type="submit" value="Register Another Aircraft">
                </form>
            </td>
            <td align="right">
                <form action="lookupNNumber" method="post">
                    <input type="hidden" name="updateRecord" value="true">
                    <input type="hidden" name="nNumber" value="<%= aircraft.getNNumber() %>">
                    <input type="submit" value="Edit This Record">
                </form>
            </td>
        </tr>
        </table>

        <br>
            
        <table cellspacing="5" cellpadding="5" border="1">
            <tr>
                <td align="right">First name:</td>
                <td><%= user.getFirstName() %></td>
            </tr>
              <tr>
                  <td align="right">Last Name:</td>
                  <td><%= user.getLastName() %></td>
              </tr>
              <tr>
                  <td align="right">Address Line 1:</td>
                  <td><%= user.getAddressStreetOne() %></td>
              </tr>
              <tr>
                  <td align="right">Address Line 2:</td>
                  <td><%= user.getAddressStreetTwo() %></td>
              </tr>
              <tr>
                  <td align="right">City:</td>
                  <td><%= user.getAddressCity() %></td>
              </tr>
              <tr>
                  <td align="right">State:</td>
                  <td><%= user.getAddressState() %></td>
              </tr>
              <tr>
                  <td align="right">ZIP:</td>
                  <td><%= user.getAddressZip() %></td>
              </tr>
              <tr>
                  <td align="right">Primary Phone:</td>
                  <td><%= user.getPrimaryPhone() %></td>
              </tr>
              <tr>
                  <td align="right">Secondary Phone:</td>
                  <td><%= user.getSecondaryPhone() %></td>
              </tr>
              <tr>
                  <td align="right">Email address:</td>
                  <td><%= user.getEmailAddress() %></td>
              </tr>

              <tr></tr>

            <tr>
                <td align="right">Need Judging:</td>
                <% if (aircraft.getNeedJudging().equals("Yes")) {%>
                <td>Yes</td>
                <% } else {%>
                <td>No</td>
                <% }%>
            </tr>


              <tr>
                  <td align="right">Arrival Date:</td>
                  <td><%= aircraft.getArrivalDate() %></td>
              </tr>
              <tr>
                  <td align="right">N-Number:</td>
                  <td><%= aircraft.getNNumber() %></td>
              </tr>
              <tr>
                  <td align="right">Aircraft Model:</td>
                  <td><%= aircraft.getAirplaneModel() %></td>
              </tr>
              <tr>
                  <td align="right">Aircraft Make:</td>
                  <td><%= aircraft.getAirplaneMake() %></td>
              </tr>
              <tr>
                  <td align="right">Year of Manufacture/Completion:</td>
                  <td><%= aircraft.getManufactureYear() %></td>
              </tr>
              <tr>
                  <td align="right">Color/Trim:</td>
                  <td><%= aircraft.getAirplaneColorTrim() %></td>
              </tr>
              <tr>
                  <td align="right">Number of Occupants:</td>
                  <td><%= aircraft.getNumberOfOccupants() %></td>
              </tr>
              <tr>
                  <td align="right">Home Base (ICAO Identifier):</td>
                  <td><%= aircraft.getHomeBase() %></td>
              </tr>
        </table>

        <br>

        <table width="510" cellspacing="0" cellpadding="8" border="0">
        <tr bgcolor="#FAFAFF">
            <td>
                <form action="nnumber_lookup.jsp" method="post">
                    <input type="submit" value="Register Another Aircraft">
                </form>
            </td>
            <td align="right">
                <form action="lookupNNumber" method="post">
                    <input type="hidden" name="updateRecord" value="true">
                    <input type="hidden" name="nNumber" value="<%= aircraft.getNNumber() %>">
                    <input type="submit" value="Edit This Record">
                </form>
            </td>
        </tr>
        </table>

        <br>
        </div> <!-- maincontent -->
        </div> <!-- contentwrapper -->
        <div id="footer">
           Created by <a href="http://francescodorigo.com"> Francesco Dorigo </a>
        </div> <!-- footer -->
        </div> <!-- wrapper -->

    </body>
</html>
