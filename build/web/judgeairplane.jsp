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

                    if (nnumber == null) { nnumber = ""; }
                    if (category == null) { category = ""; }

                    %>
                    <h3>N-Number: <%= nnumber %> </h3>
                    <h3>Category: <%= category %> </h3>

                    <form action="JudgeAirplane" method="post">
                        <table cellspacing="20px" width="680px">
                            <tr><td>
                                <table bgcolor="#f0f0ff">
                                    <tr>
                                        <th>Judge 1</th>
                                    </tr>
                                    <tr>
                                        <td>
                                            Fusealage:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Lifting:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="lifting" value="1">1
                                                <option name="lifting" value="2">2
                                                <option name="lifting" value="3">3
                                                <option name="lifting" value="4">4
                                                <option name="lifting" value="5">5
                                                <option name="lifting" value="6">6
                                                <option name="lifting" value="7">7
                                                <option name="lifting" value="8">8
                                                <option name="lifting" value="9">9
                                                <option name="lifting" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Pitch:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="pitch" value="1">1
                                                <option name="pitch" value="2">2
                                                <option name="pitch" value="3">3
                                                <option name="pitch" value="4">4
                                                <option name="pitch" value="5">5
                                                <option name="pitch" value="6">6
                                                <option name="pitch" value="7">7
                                                <option name="pitch" value="8">8
                                                <option name="pitch" value="9">9
                                                <option name="pitch" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Landing:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Cockpit:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Power:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Finish:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Innovation:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Overall:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table>
                                    <tr><th>Judge 2</th> </tr>
                                    <tr>
                                        <td>
                                            Fusealage:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Lifting:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Pitch:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Landing:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Cockpit:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Power:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Finish:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Innovation:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Overall:
                                        </td>
                                        <td>
                                            <select>
                                                <option name="fuse" value="1">1
                                                <option name="fuse" value="2">2
                                                <option name="fuse" value="3">3
                                                <option name="fuse" value="4">4
                                                <option name="fuse" value="5">5
                                                <option name="fuse" value="6">6
                                                <option name="fuse" value="7">7
                                                <option name="fuse" value="8">8
                                                <option name="fuse" value="9">9
                                                <option name="fuse" value="10">10
                                            </select>
                                        </td>
                                    </tr>
                                </table>
                            </td><td>
                                <table bgcolor="#f0f0ff">
                                <tr><th>Judge 3</th> </tr>
                                <tr>
                                    <td>
                                        Fusealage:
                                    </td>
                                    <td>
                                        <select>
                                            <option name="fuse" value="1">1
                                            <option name="fuse" value="2">2
                                            <option name="fuse" value="3">3
                                            <option name="fuse" value="4">4
                                            <option name="fuse" value="5">5
                                            <option name="fuse" value="6">6
                                            <option name="fuse" value="7">7
                                            <option name="fuse" value="8">8
                                            <option name="fuse" value="9">9
                                            <option name="fuse" value="10">10
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Lifting:
                                    </td>
                                    <td>
                                        <select>
                                            <option name="fuse" value="1">1
                                            <option name="fuse" value="2">2
                                            <option name="fuse" value="3">3
                                            <option name="fuse" value="4">4
                                            <option name="fuse" value="5">5
                                            <option name="fuse" value="6">6
                                            <option name="fuse" value="7">7
                                            <option name="fuse" value="8">8
                                            <option name="fuse" value="9">9
                                            <option name="fuse" value="10">10
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Pitch:
                                    </td>
                                    <td>
                                        <select>
                                            <option name="fuse" value="1">1
                                            <option name="fuse" value="2">2
                                            <option name="fuse" value="3">3
                                            <option name="fuse" value="4">4
                                            <option name="fuse" value="5">5
                                            <option name="fuse" value="6">6
                                            <option name="fuse" value="7">7
                                            <option name="fuse" value="8">8
                                            <option name="fuse" value="9">9
                                            <option name="fuse" value="10">10
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Landing:
                                    </td>
                                    <td>
                                        <select>
                                            <option name="fuse" value="1">1
                                            <option name="fuse" value="2">2
                                            <option name="fuse" value="3">3
                                            <option name="fuse" value="4">4
                                            <option name="fuse" value="5">5
                                            <option name="fuse" value="6">6
                                            <option name="fuse" value="7">7
                                            <option name="fuse" value="8">8
                                            <option name="fuse" value="9">9
                                            <option name="fuse" value="10">10
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Cockpit:
                                    </td>
                                    <td>
                                        <select>
                                            <option name="fuse" value="1">1
                                            <option name="fuse" value="2">2
                                            <option name="fuse" value="3">3
                                            <option name="fuse" value="4">4
                                            <option name="fuse" value="5">5
                                            <option name="fuse" value="6">6
                                            <option name="fuse" value="7">7
                                            <option name="fuse" value="8">8
                                            <option name="fuse" value="9">9
                                            <option name="fuse" value="10">10
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Power:
                                    </td>
                                    <td>
                                        <select>
                                            <option name="fuse" value="1">1
                                            <option name="fuse" value="2">2
                                            <option name="fuse" value="3">3
                                            <option name="fuse" value="4">4
                                            <option name="fuse" value="5">5
                                            <option name="fuse" value="6">6
                                            <option name="fuse" value="7">7
                                            <option name="fuse" value="8">8
                                            <option name="fuse" value="9">9
                                            <option name="fuse" value="10">10
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Finish:
                                    </td>
                                    <td>
                                        <select>
                                            <option name="fuse" value="1">1
                                            <option name="fuse" value="2">2
                                            <option name="fuse" value="3">3
                                            <option name="fuse" value="4">4
                                            <option name="fuse" value="5">5
                                            <option name="fuse" value="6">6
                                            <option name="fuse" value="7">7
                                            <option name="fuse" value="8">8
                                            <option name="fuse" value="9">9
                                            <option name="fuse" value="10">10
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Innovation:
                                    </td>
                                    <td>
                                        <select>
                                            <option name="fuse" value="1">1
                                            <option name="fuse" value="2">2
                                            <option name="fuse" value="3">3
                                            <option name="fuse" value="4">4
                                            <option name="fuse" value="5">5
                                            <option name="fuse" value="6">6
                                            <option name="fuse" value="7">7
                                            <option name="fuse" value="8">8
                                            <option name="fuse" value="9">9
                                            <option name="fuse" value="10">10
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Overall:
                                    </td>
                                    <td>
                                        <select>
                                            <option name="fuse" value="1">1
                                            <option name="fuse" value="2">2
                                            <option name="fuse" value="3">3
                                            <option name="fuse" value="4">4
                                            <option name="fuse" value="5">5
                                            <option name="fuse" value="6">6
                                            <option name="fuse" value="7">7
                                            <option name="fuse" value="8">8
                                            <option name="fuse" value="9">9
                                            <option name="fuse" value="10">10
                                        </select>
                                    </td>
                                </tr>
                            </td>
                        </table>
                        </tr>
                        </table>
                        <input type="hidden" name="nnumber" value="<%= nnumber %>">
                        <input type="hidden" name="category" value="<%= category %>">
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
