<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <link href="resources/stylesheet.css" rel="stylesheet" type="text/css">
        <script src="resources/equalcolumns.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Airplane Judging</title>
    </head>

    <body>
        <div id="wrapper">

            <div id="banner">
                <h1>Airplane Judging</h1>
            </div> <!-- banner -->

            <div id="contentwrapper">

                <div id="leftcolumn">
                    <h3>Menu</h3>
                    <a class="list" href="admin.jsp?clearPage=true">Home / Admin</a> <br>
                    <a class="list" href="nnumber_lookup.jsp">Register New User</a> <br>
                    <a class="list" href="register_user.jsp?updateRecord=false">Register (no N-Number)</a> <br>

                    <h3>Info</h3>
                    <p>
                        Enter a value for each judgeable category.
                    </p>
                </div> <!-- leftcolumn -->

                <div id="maincolumn">

                    <div id="feedback">
                    </div> <!-- feedback -->

                    <%
                        String nnumber = (String) request.getParameter("nnumber");
                        String category = (String) request.getParameter("category");

                        if (nnumber == null) {
                            nnumber = "";
                        }
                        if (category == null) {
                            category = "";
                        }
                    %>
                    <h3>N-Number: <%= nnumber%> </h3>
                    <h3>Category: <%= category%> </h3>

                    <form action="JudgeAirplane" method="post">
                        <table cellspacing="20px" width="680px">
                            <tr>
                                <td>
                                    <table bgcolor="#f0f0ff">
                                        <tr>
                                            <th colspan="2" align="center">Judge 1</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                Fusealage:
                                            </td>
                                            <td>
                                                <select name="fuse1">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Lifting:
                                            </td>
                                            <td>
                                                <select name="lift1">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Pitch:
                                            </td>
                                            <td>
                                                <select name ="pitc1">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Landing:
                                            </td>
                                            <td>
                                                <select name="land1">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Cockpit:
                                            </td>
                                            <td>
                                                <select name="cock1">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Power:
                                            </td>
                                            <td>
                                                <select name="powe1">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Finish:
                                            </td>
                                            <td>
                                                <select name="fini1">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Innovation:
                                            </td>
                                            <td>
                                                <select name="inno1">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Overall:
                                            </td>
                                            <td>
                                                <select name="over1">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <th colspan="2" align="center">Judge 2</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                Fusealage:
                                            </td>
                                            <td>
                                                <select name="fuse2">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Lifting:
                                            </td>
                                            <td>
                                                <select name="lift2">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Pitch:
                                            </td>
                                            <td>
                                                <select name="pitc2">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Landing:
                                            </td>
                                            <td>
                                                <select name="land2">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Cockpit:
                                            </td>
                                            <td>
                                                <select name="cock2">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Power:
                                            </td>
                                            <td>
                                                <select name="powe2">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Finish:
                                            </td>
                                            <td>
                                                <select name="fini2">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Innovation:
                                            </td>
                                            <td>
                                                <select name="inno2">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Overall:
                                            </td>
                                            <td>
                                                <select name="over2">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <table bgcolor="#f0f0ff">
                                        <tr>
                                            <th colspan="2" align="center">Judge 3</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                Fusealage:
                                            </td>
                                            <td>
                                                <select name="fuse3">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Lifting:
                                            </td>
                                            <td>
                                                <select name="lift3">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Pitch:
                                            </td>
                                            <td>
                                                <select name="pitc3">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Landing:
                                            </td>
                                            <td>
                                                <select name="land3">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Cockpit:
                                            </td>
                                            <td>
                                                <select name="cock3">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Power:
                                            </td>
                                            <td>
                                                <select name="powe3">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Finish:
                                            </td>
                                            <td>
                                                <select name="fini3">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Innovation:
                                            </td>
                                            <td>
                                                <select name="inno3">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Overall:
                                            </td>
                                            <td>
                                                <select name="over3">
                                                    <option value="1">1
                                                    <option value="2">2
                                                    <option value="3">3
                                                    <option value="4">4
                                                    <option value="5">5
                                                    <option value="6">6
                                                    <option value="7">7
                                                    <option value="8">8
                                                    <option value="9">9
                                                    <option value="10">10
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <input type="hidden" name="nnumber" value="<%= nnumber%>">
                        <input type="hidden" name="category" value="<%= category%>">
                        <input class="register-user" type="submit" value="Judge Aircraft">
                    </form>

                    <br>

                </div> <!-- maincolumn -->
            </div> <!-- contentwrapper -->
            <div id="footer">
                Created by <a href="http://francescodorigo.com"> Francesco Dorigo </a>
            </div> <!-- footer -->
        </div> <!-- wrapper -->

    </body>
</html>
