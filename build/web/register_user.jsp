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
        <title>Aircraft Registration Form</title>
    </head>
    <body>
        <div id="wrapper">

        <%@ page import="business.*" %>
        <%@ page import="java.util.Calendar" %>
        <%@ page import="java.util.GregorianCalendar" %>

        <%
        User user = (User) request.getAttribute("user");
        Aircraft aircraft = (Aircraft) request.getAttribute("aircraft");
        String message = (String) request.getAttribute("message");
        String forceUp = (String) request.getAttribute("updateRecord");

        if (user == null) {
            user = new User();
        }

        if (aircraft == null) {
            aircraft = new Aircraft();
        }

        if (message == null) {
            message = "";
        }

        if (forceUp == null) {
            forceUp = "false";
        }
        else if (forceUp.equals("true")) {
            message = "Values filled based on N-Number in our database";
        }


        GregorianCalendar date = new GregorianCalendar();
        String dateVal = date.get(Calendar.YEAR) + "-" + date.get(Calendar.MONTH) + "-" + date.get(Calendar.DATE);
        aircraft.setArrivalDate(dateVal);
        %>

        <div id="banner">
        <h1>Aircraft Registration</h1>
        </div> <!-- banner -->

        <div id="contentwrapper">

        <div id="leftcolumn">
            <h3>Menu</h3>
            <a class="list" href="admin.jsp">Home / Admin</a> <br>
            <a class="list" href="nnumber_lookup.jsp">Register New User</a> <br>
            <a class="list" href="register_user.jsp?updateRecord=false">Register (no N-Number)</a> <br>

            <h3>Info</h3>
            <p>
                If this is a <b>new</b> user registration, the values that have been prefilled
                come from the FAA database and are based on the NNumber that was provided.
            </p>
            <p>
                If this is an <b>update</b> of the existing record, the values that have been prefilled
                come from our database.
            </p>
            <p>
                If the record does not exist, you can enter all the values manually.
                This should never happen unless the aircraft has not yet been registered with the FAA.
            </p>
        </div> <!-- leftcolumn -->

        <div id="maincolumn">

        <div id="feedback">
            <%= message%>
        </div> <!-- feedback -->

        <form action="registerUser" method="post">

            <table width="600" align="left">
                <h2>Contact Information</h2>
                <table cellspacing="5" border="0">
                    <tr>
                        <td align="right" width="240">Company/Owner Name:</td>
                        <td><input type="text" size="30" name="firstName" value="<%= user.getFirstName()%>"></td>
                        <td><font color="red">*</font></td>
                    </tr>
                    <!--
                    <tr>
                        <td align="right">Last name:</td>
                        <td><input type="text" name="lastName" value="<%= user.getLastName()%>"></td>
                        <td><font color="red">*</font></td>
                    </tr>
                    -->
                    <tr>
                        <td align="right">Address Line 1:</td>
                        <td><input type="text" size="30" name="addressStreetOne" value="<%= user.getAddressStreetOne()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">Address Line 2:</td>
                        <td><input type="text" size="30" name="addressStreetTwo" value="<%= user.getAddressStreetTwo()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">City:</td>
                        <td><input type="text" size="30" name="addressCity" value="<%= user.getAddressCity()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">State:</td>
                        <td><input type="text" size="30" name="addressState" value="<%= user.getAddressState()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">ZIP Code:</td>
                        <td><input type="text" size="30" name="addressZip" value="<%= user.getAddressZip()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">Primary Phone:</td>
                        <td><input type="text" size="30" name="primaryPhone" value="<%= user.getPrimaryPhone()%>"></td>
                        <td><font color="red">*</font></td>
                    </tr>
                    <tr>
                        <td align="right">Secondary Phone:</td>
                        <td><input type="text" size="30" name="secondaryPhone" value="<%= user.getSecondaryPhone()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">Email address:</td>
                        <td><input type="text" size="30" name="emailAddress" value="<%= user.getEmailAddress()%>"></td>
                        <td><font color="red">*</font></td>
                    </tr>
                </table>

                <h2>Aircraft Information</h2>
                <table cellspacing="5" border="0">
                    <tr>
                        <td align="right">Need Judging:</td>
                        <% if (aircraft.getNeedJudging().equals("1")) {%>
                        <td align="left"><input type="radio" name="needJudging" value="Yes" checked>Yes
                        <br><input type="radio" name="needJudging" value="No" >No</td>
                        <% } else {%>
                        <td align="left"><input type="radio" name="needJudging" value="Yes">Yes
                        <br><input type="radio" name="needJudging" value="No" checked>No</td>
                        <% }%>
                        <td><font color="red">*</font></td>
                    </tr>
                    <tr>
                        <td align="right" width="240">Arrival Date (yyyy-mm-dd):</td>
                        <td><input type="text" size="30" name="arrivalDate" value="<%= aircraft.getArrivalDate()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">N-Number:</td>
                        <td><input type="text" size="30" name="nNumber" value="<%= aircraft.getNNumber()%>"></td>
                        <td><font color="red">*</font></td>
                    </tr>
                    <tr>
                        <td align="right">Aircraft Model:</td>
                        <td><input type="text" size="30" name="airplaneModel" value="<%= aircraft.getAirplaneModel()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">Aircraft Make:</td>
                        <td><input type="text" size="30" name="airplaneMake" value="<%= aircraft.getAirplaneMake()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">Year of Manufacture:</td>
                        <td><input type="text" size="30" name="manufactureYear" value="<%= aircraft.getManufactureYear()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">Color/Trim:</td>
                        <td><input type="text" size="30" name="airplaneColorTrim" value="<%= aircraft.getAirplaneColorTrim()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">Number of Occupants:</td>
                        <td><input type="text" size="30" name="numberOfOccupants" value="<%= aircraft.getNumberOfOccupants()%>"></td>
                    </tr>
                    <tr>
                        <td align="right">Home Base (ICAO):</td>
                        <td><input type="text" size="30" name="homeBase" value="<%= aircraft.getHomeBase()%>"></td>
                    </tr>
                </table>
                <% if (forceUp.equals("false")) {%>
                <input type="hidden" name="updateRecord" value="false">
                <input class="register-user" type="submit" value="Register Aircraft">
                <% } else { %>
                <input type="hidden" name="updateRecord" value="true">
                <input class="register-user" type="submit" value="Update Record">
                <% } %>
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
