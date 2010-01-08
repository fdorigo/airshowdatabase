<%-- 
    Document   : judging.jsp
    Created on : Jun 10, 2009, 4:36:55 PM
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
        <title>Administration Page</title>
    </head>

    <body>
        <div id="wrapper">

            <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:if test="${sqlStatement == null}">
                <c:set var="sqlStatement" value="select NNUMBER from master" />
            </c:if>

            <div id="banner">
                <h1>Records Lookup and Administration</h1>
            </div> <!-- banner -->

            <div id="contentwrapper">

                <div id="leftcolumn">
                    <h3>Menu</h3>
                    <a class="list" href="admin.jsp?clearPage=true">Home / Admin</a> <br>
                    <a class="list" href="nnumber_lookup.jsp">Register New User</a> <br>
                    <a class="list" href="register_user.jsp?updateRecord=false">Register (no N-Number)</a> <br>

                    <h3>Info</h3>
                    <p>
                        Manage the records from this screen.
                    </p>
                    <% if (request.getParameter("toolInfo") != null) {
                        String infoMsg = request.getParameter("toolInfo");
                    %>
                    <p class="infomsgspan"><%= infoMsg%></p>
                    <%
                        } else {
                    %>
                    <p></p>
                    <%
                        }
                    %>
                </div> <!-- leftcolumn -->

                <div id="maincolumn">

                    <div id="feedback">
                    </div> <!-- feedback -->

                    <h2> Control Panel </h2>

                    <table border="0" cellspacing="5" cellpadding="5">

                        <tr>
                            <td>
                                <form action="nnumber_lookup.jsp" method="post">
                                    <input type="submit" style="width: 200px; font-size: 100%;" value="Register Aircraft">
                                </form>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form action="loadFAAdata.jsp" method="post">
                                    <input type="submit" style="width: 200px; font-size: 100%;" value="Load FAA Record">
                                </form>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form action="queryDatabase" method="post">
                                    <input type="hidden" name="retrieveAll" value="yes">
                                    <input type="hidden" name="toolInfo" value="Click on the NNumber to view the registration information">
                                    <input type="submit" style="width: 200px; font-size: 100%;" value="Display Registered">
                                </form>
                            </td>
                        </tr>

                        <tr><td></td></tr>

                        <tr>
                            <td>
                                <form action="queryDatabase" method="post">
                                    <input type="hidden" name="retrieveAll" value="updaterec">
                                    <input type="hidden" name="toolInfo" value="Click on the NNumber to update the registration information">
                                    <input type="submit" style="width: 200px; font-size: 100%;" value="Modify Record">
                                </form>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form action="delete_record.jsp" method="post">
                                    <input type="submit" style="width: 200px; font-size: 100%;" value="Delete Record">
                                </form>
                            </td>
                        </tr>

                        <tr><td></td></tr>

                        <tr>
                            <td>
                                <form action="queryDatabase" method="post">
                                    <input type="hidden" name="retrieveJudging" value="yes">
                                    <input type="hidden" name="toolInfo" value="To judge a plane click on its corresponding NNumber">
                                    <input type="submit" style="width: 200px; font-size: 100%;" value="To Be Judged">
                                </form>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form action="RetrieveScoreServlet" method="post">
                                    <input type="hidden" name="toolInfo" value="Click on the NNumber to view contact information<br><br>Click on the category name to sort by that category">
                                    <input type="submit" style="width: 200px; font-size: 100%;" value="Judged Results">
                                </form>
                            </td>
                        </tr>


                    </table>

                    <%
                    if (request.getParameter("clearPage") != null) {
                        if (request.getParameter("clearPage").equals("true")) {
                        } else {
                    %>
                    ${sqlResult}
                    <%  }
                    } else {
                    %>
                    ${sqlResult}
                    <%
                    }
                    %>


                    <br>

                </div> <!-- maincolumn -->
            </div> <!-- contentwrapper -->
            <div id="footer">
                Created by <a href="http://francescodorigo.com"> Francesco Dorigo </a>
            </div> <!-- footer -->
        </div> <!-- wrapper -->

    </body>
</html>
