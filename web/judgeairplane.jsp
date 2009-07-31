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
            <a class="list" href="admin.jsp">Home / Admin</a> <br>
            <a class="list" href="nnumber_lookup.jsp">Register New User</a> <br>
            <a class="list" href="register_user.jsp?updateRecord=false">Register (no N-Number)</a> <br>

            <h3>Info</h3>
            <p>
                Enter a value for <b>all</b> categories.
            </p>
        </div> <!-- leftcolumn -->

        <div id="maincolumn">

        <div id="feedback">
        </div> <!-- feedback -->

        <h2>N-Number for the airplane to judge:</h2>
        <%
        String nnumber = (String) request.getParameter("nnumber");
        %>
        <p>
            Judging requested for: <%= nnumber%>
        </p>

        <form action="JudgeAirplane" method="post">
        <table  cellpadding="20" border="0" cellspacing="0">
        <tr>
            <th bgcolor="#f0f0ff">Judge 1</th>
            <th>Judge 2</th>
            <th bgcolor="#f0f0ff">Judge 3</th>
        </tr>

        <tr>
        <td bgcolor="#f0f0ff">
        <table>
            <tr>
                <th>Category 1</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat1" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat1" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat1" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat1" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat1" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 2</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat2" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat2" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat2" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat2" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat2" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 3</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat3" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat3" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat3" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat3" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat3" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 4</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat4" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat4" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat4" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat4" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat4" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 5</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat5" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat5" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat5" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat5" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat5" value="5"</td>
            </tr>
        </table>
        </td>


        <td>    
        <table>
            <tr>
                <th>Category 1</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat6" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat6" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat6" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat6" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat6" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 2</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat7" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat7" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat7" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat7" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat7" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 3</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat8" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat8" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat8" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat8" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat8" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 4</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat9" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat9" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat9" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat9" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat9" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 5</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat10" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat10" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat10" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat10" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat10" value="5"</td>
            </tr>
        </table>
        </td>


        <td bgcolor="#f0f0ff">
        <table>
            <tr>
                <th>Category 1</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat11" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat11" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat11" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat11" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat11" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 2</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat12" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat12" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat12" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat12" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat12" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 3</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat13" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat13" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat13" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat13" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat13" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 4</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat14" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat14" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat14" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat14" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat14" value="5"</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Category 5</th>
            </tr>
            <tr>
                <td>1<input type="radio" name="cat15" value="1"</td>
            </tr><tr>
                <td>2<input type="radio" name="cat15" value="2"</td>
            </tr><tr>
                <td>3<input type="radio" name="cat15" value="3"</td>
            </tr><tr>
                <td>4<input type="radio" name="cat15" value="4"</td>
            </tr><tr>
                <td>5<input type="radio" name="cat15" value="5"</td>
            </tr>
        </table>
        </td>

        
        </tr>
        </table>
        <input type="hidden" name="nnumber" value="<%= nnumber%>">
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
