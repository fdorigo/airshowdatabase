/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sql;

import business.*;

import java.sql.*;

/**
 *
 * @author fdorigo
 */
public class DBUtil {

    public static String getJudgableTable(ResultSet results, boolean retrieveAll, boolean updateRec)
            throws SQLException {

        StringBuffer htmlRows = new StringBuffer();
        ResultSetMetaData metaData = results.getMetaData();
        int columnCount = metaData.getColumnCount();

        htmlRows.append("<div id=\"needjudgetbl\">");

        if (retrieveAll == true) {
            htmlRows.append("<h2> Airplanes registered in the database </h2>");
        } else {
            htmlRows.append("<h2> Airplanes to be judged </h2>");
        }

        htmlRows.append("<table width=\"680px\" cellpadding=\"5\" cellspacing=\"0\" border=\"0\">");
        htmlRows.append("<tr>");
        htmlRows.append("<th align=\"left\"><b> NNum </b></th>");
        htmlRows.append("<th align=\"left\"><b> Make </b></th>");
        htmlRows.append("<th align=\"left\"><b> Model </b></th>");
        htmlRows.append("<th align=\"left\"><b> Category </b></th>");
        if (retrieveAll == true) {
            htmlRows.append("<th><b> Judgeable? </b></th>");
        }
        htmlRows.append("<th><b> Judged? </b></th>");

        htmlRows.append("</tr>");

        int j = 0;
        while (results.next()) {
            if (j % 2 == 0) {
                htmlRows.append("<tr bgcolor=\"#F0F0FF\">");
            } else {
                htmlRows.append("<tr>");
            }
            j++;

            for (int i = 1; i <= columnCount; i++) {
                if (i % columnCount == 1) {
                    if (retrieveAll == true) {
                        if (updateRec == true) {
                            htmlRows.append("<td><a href=\'lookupNNumber?nNumber=" + results.getString(i) + "&updateRecord=true\'>" + results.getString(i) + "</td>");
                        } else {
                            htmlRows.append("<td><a href=\'lookupNNumber?nNumber=" + results.getString(i) + "\'>" + results.getString(i) + "</td>");
                        }
                    } else {
                        htmlRows.append("<td><a href=\'judgeairplane.jsp?nnumber=" + results.getString(i) + "&category=" + results.getString("category") + "\'>" + results.getString(i) + "</td>");
                    }
                } else {
                    if (retrieveAll == true) {
                        if (i % columnCount == 5 || i % columnCount == 0) {
                            if (results.getString(i) == null) {
                                htmlRows.append("<td align=\"center\" style=\"font-size:80%;\">No</td>");
                            } else if (results.getString(i).equals("1")) {
                                htmlRows.append("<td align=\"center\" style=\"font-size:80%;\">Yes</td>");
                            } else {
                                htmlRows.append("<td align=\"center\" style=\"font-size:80%;\">No</td>");
                            }
                        } else {
                            htmlRows.append("<td style=\"font-size:80%;\">" + results.getString(i) + "</td>");
                        }
                    }
                    else {
                        if (i % columnCount == 0) {
                            if (results.getString(i) == null) {
                                htmlRows.append("<td align=\"center\" style=\"font-size:80%;\">No</td>");
                            } else if (results.getString(i).equals("1")) {
                                htmlRows.append("<td align=\"center\" style=\"font-size:80%;\">Yes</td>");
                            } else {
                                htmlRows.append("<td align=\"center\" style=\"font-size:80%;\">No</td>");
                            }
                        } else {
                            htmlRows.append("<td style=\"font-size:80%;\">" + results.getString(i) + "</td>");
                        }
                    }
                }
            }
        }

        htmlRows.append("</tr>");
        htmlRows.append("</table>");
        htmlRows.append("</div>");

        return htmlRows.toString();
    }

    public static String getScoreTable(ResultSet results)
            throws SQLException {

        StringBuffer htmlRows = new StringBuffer();
        ResultSetMetaData metaData = results.getMetaData();
        int columnCount = metaData.getColumnCount();

        htmlRows.append("<h2> Airplanes Scores </h2>");

        htmlRows.append("<table style=\"font-size:80%; width=\"680px\" cellpadding=\"5\" cellspacing=\"0\" border=\"0\">");
        htmlRows.append("<tr>");


        htmlRows.append("<th><b> N-Number </b></th>");
        //htmlRows.append("<th><a href=\'RetrieveScoreServlet?orderBy=category\'> <b>Category</b></a></th>");
        htmlRows.append("<th><a href=\'RetrieveScoreServlet?orderBy=overall\'>  <b>Overall</b></a></th>");
        htmlRows.append("<th><a href=\'RetrieveScoreServlet?orderBy=fuselage\'> <b>Fuselage</b></a></th>");
        htmlRows.append("<th><a href=\'RetrieveScoreServlet?orderBy=lifing\'>   <b>Lifting</b></a></th>");
        htmlRows.append("<th><a href=\'RetrieveScoreServlet?orderBy=pitch\'>    <b>Pitch</b></a></th>");
        htmlRows.append("<th><a href=\'RetrieveScoreServlet?orderBy=landing\'>  <b>Landing</b></a></th>");
        htmlRows.append("<th><a href=\'RetrieveScoreServlet?orderBy=cockpit\'>  <b>Cockpit</b></a></th>");
        htmlRows.append("<th><a href=\'RetrieveScoreServlet?orderBy=power\'>    <b>Power</b></a></th>");
        htmlRows.append("<th><a href=\'RetrieveScoreServlet?orderBy=finish\'>   <b>Finish</b></a></th>");
        htmlRows.append("<th><a href=\'RetrieveScoreServlet?orderBy=innovation\'><b>Innovation</b></a></th>");

        htmlRows.append("</tr>");

        int j = 0;
        String prevcat = "empty";

        while (results.next()) {
            if (j % 2 == 0) {
                htmlRows.append("<tr bgcolor=\"#F0F0FF\">");
            } else {
                htmlRows.append("<tr>");
            }
            j++;

            for (int i = 1; i <= columnCount; i++) {
                if (i == 1) {
                    if (results.getString(i+1) != null && results.getString(i+1).equals(prevcat)) {

                    }
                    else
                    {
                        htmlRows.append("<td bgcolor=\"#FFB0B0\" colspan=\"" + (columnCount) + "\" style=\"text-align:center;\">" + results.getString(i+1) + "</td></tr>");
                        htmlRows.append("<tr>");
                        j++;
                    }
                    prevcat = results.getString(i+1);
                }

                if (i == 2) {
                }
                else {
                    if (i % columnCount == 1) {
                        htmlRows.append("<td><a href=\'lookupNNumber?nNumber=" + results.getString(i) + "&updateRecord=false\'>" + results.getString(i) + "</td>");
                    } else {
                        htmlRows.append("<td style=\"text-align:center;\">" + results.getString(i) + "</td>");
                    }
                }

            }
        }

        htmlRows.append("</tr>");
        htmlRows.append("</table>");
        htmlRows.append("</div>");

        return htmlRows.toString();
    }

    public static String getScoreTable2(ResultSet results)
            throws SQLException {

        StringBuffer htmlRows = new StringBuffer();
        ResultSetMetaData metaData = results.getMetaData();
        int columnCount = metaData.getColumnCount();

        htmlRows.append("<h2> Airplanes Scores </h2>");

        htmlRows.append("<table style=\"font-size:100%; width=\"680px\" cellpadding=\"5\" cellspacing=\"0\" border=\"0\">");
        htmlRows.append("<tr>");


        htmlRows.append("<th><b> N-Number </b></th>");
        htmlRows.append("<th><b> Judge 1  </b></th>");
        htmlRows.append("<th><b> Judge 2  </b></th>");
        htmlRows.append("<th><b> Judge 3  </b></th>");
        htmlRows.append("<th><b> Total    </b></th>");
        htmlRows.append("<th><b> Average  </b></th>");

        htmlRows.append("</tr>");

        int j = 0;
        String prevcat = "empty";

        String num1, num2, num3;
        int n1=0, n2=0, n3 = 0;
        float avg;

        while (results.next()) {
            if (j % 2 == 0) {
                htmlRows.append("<tr bgcolor=\"#F0F0FF\">");
            } else {
                htmlRows.append("<tr>");
            }
            j++;

            for (int i = 1; i <= columnCount; i++) {
                if (i == 1) {
                    if (results.getString(i+1) != null && results.getString(i+1).equals(prevcat)) {

                    }
                    else
                    {
                        htmlRows.append("<td bgcolor=\"#FFB0B0\" colspan=\"" + (columnCount) + "\" style=\"text-align:center;\">" + results.getString(i+1) + "</td></tr>");
                        htmlRows.append("<tr>");
                        j++;
                    }
                    prevcat = results.getString(i+1);
                }

                if (i == 2) {
                }
                else {
                    if (i % columnCount == 1) {
                        htmlRows.append("<td><a href=\'lookupNNumber?nNumber=" + results.getString(i) + "&updateRecord=false\'>" + results.getString(i) + "</td>");
                    } else {
                        htmlRows.append("<td style=\"text-align:center;\">" + results.getString(i) + "</td>");
                    }
                }

                if (i == columnCount) {
                    num1 = results.getString(3);
                    num2 = results.getString(4);
                    num3 = results.getString(5);

                    //System.out.println("n1: " + num1 + "n2: " + num2 + "n3: " + num3);

                    if (num1 != null) {
                        n1 = Integer.parseInt(num1);
                    }
                    if (num2 != null) {
                        n2 = Integer.parseInt(num2);
                    }
                    if (num3 != null) {
                        n3 = Integer.parseInt(num3);
                    }

                    avg = (n1 + n2 + n3) / 3;

                    htmlRows.append("<td style=\"text-align:center;\">" + avg + "</td>");
                }
            }
        }

        htmlRows.append("</tr>");
        htmlRows.append("</table>");
        htmlRows.append("</div>");

        return htmlRows.toString();
    }


    public static boolean nNumberFound(String nNum) {
        boolean retVal = false;

        try {
            String username = "airplane";
            String password = "password";
            String dbURL = "jdbc:mysql://localhost:3306/airplane";

            String sqlQuery = "SELECT NNUMBER FROM Record " + "WHERE NNUMBER ='" + nNum + "';";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();
            ResultSet nNumberResult = statement.executeQuery(sqlQuery);

            retVal = nNumberResult.first();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        if (retVal != true) {
            try {
                String username = "airplane";
                String password = "password";
                String dbURL = "jdbc:mysql://localhost:3306/faabase";

                String sqlQuery = "SELECT NNUMBER FROM master " + "WHERE NNUMBER ='" + nNum + "';";

                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(dbURL, username, password);
                Statement statement = connection.createStatement();

                ResultSet nNumberResult = statement.executeQuery(sqlQuery);

                retVal = nNumberResult.first();
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }

        return retVal;
    }

    public static User lookupUserByNNumber(String nNum) {
        User user = null;
        boolean recordFound = false;

        try {
            String username = "airplane";
            String password = "password";
            String dbURL = "jdbc:mysql://localhost:3306/airplane";

            String sqlQuery = "SELECT nnumber,firstname,addressone,addresstwo,addresscity,addressstate,addresszip,primaryphone,secondaryphone,emailaddress FROM Record " + "WHERE nnumber ='" + nNum + "';";

            Class.forName("com.mysql.jdbc.Driver");

            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();
            ResultSet sqlResult = statement.executeQuery(sqlQuery);

            if (sqlResult.first() == true) {
                user = new User();

                if (sqlResult.getString("firstname") != null) {
                    user.setFirstName(sqlResult.getString("firstname"));
                }
                if (sqlResult.getString("addressone") != null) {
                    user.setAddressStreetOne(sqlResult.getString("addressone"));
                }
                if (sqlResult.getString("addresstwo") != null) {
                    user.setAddressStreetTwo(sqlResult.getString("addresstwo"));
                }
                if (sqlResult.getString("addresscity") != null) {
                    user.setAddressCity(sqlResult.getString("addresscity"));
                }
                if (sqlResult.getString("addressstate") != null) {
                    user.setAddressState(sqlResult.getString("addressstate"));
                }
                if (sqlResult.getString("addresszip") != null) {
                    user.setAddressZip(sqlResult.getString("addresszip"));
                }
                if (sqlResult.getString("primaryphone") != null) {
                    user.setPrimaryPhone(sqlResult.getString("primaryphone"));
                }
                if (sqlResult.getString("secondaryphone") != null) {
                    user.setSecondaryPhone(sqlResult.getString("secondaryphone"));
                }
                if (sqlResult.getString("emailaddress") != null) {
                    user.setEmailAddress(sqlResult.getString("emailaddress"));
                }

                recordFound = true;
            } else {
                recordFound = false;
                user = null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            if (recordFound != true) {
                try {
                    String username = "airplane";
                    String password = "password";
                    String dbURL = "jdbc:mysql://localhost:3306/faabase";

                    String sqlQuery = "SELECT NNUMBER,NAME,STREET,STREET2,CITY,STATE,ZIP FROM master " + "WHERE NNUMBER ='" + nNum + "';";

                    Class.forName("com.mysql.jdbc.Driver");

                    Connection connection = DriverManager.getConnection(dbURL, username, password);

                    Statement statement = connection.createStatement();

                    ResultSet sqlResult = statement.executeQuery(sqlQuery);

                    if (sqlResult.first() == true) {
                        user = new User();

                        if (sqlResult.getString("NAME") != null) {
                            user.setFirstName(sqlResult.getString("NAME"));
                        }
                        if (sqlResult.getString("STREET") != null) {
                            user.setAddressStreetOne(sqlResult.getString("STREET"));
                        }
                        if (sqlResult.getString("STREET2") != null) {
                            user.setAddressStreetTwo(sqlResult.getString("STREET2"));
                        }
                        if (sqlResult.getString("CITY") != null) {
                            user.setAddressCity(sqlResult.getString("CITY"));
                        }
                        if (sqlResult.getString("STATE") != null) {
                            user.setAddressState(sqlResult.getString("STATE"));
                        }
                        if (sqlResult.getString("ZIP") != null) {
                            user.setAddressZip(sqlResult.getString("ZIP"));
                        }
                    } else {
                        user = null;
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
            }
        }
        return user;
    }

    public static Aircraft lookupAircraftByNNumber(String nNum) {
        Aircraft aircraft = null;
        boolean recordFound = false;

        try {
            String username = "airplane";
            String password = "password";
            String dbURL = "jdbc:mysql://localhost:3306/airplane";

            String sqlQuery = "SELECT nnumber,arrivaldate,airplanemodel,airplanemake,manufactureyear,airplanecolor,numberofoccupants,homebase,needjudging,category FROM Record " + "WHERE nnumber ='" + nNum + "';";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();
            ResultSet sqlResult = statement.executeQuery(sqlQuery);

            if (sqlResult.first() == true) {
                aircraft = new Aircraft();

                aircraft.setNNumber(nNum.toUpperCase());

                if (sqlResult.getString("arrivaldate") != null) {
                    aircraft.setArrivalDate(sqlResult.getString("arrivaldate"));
                }
                if (sqlResult.getString("airplanemodel") != null) {
                    aircraft.setAirplaneModel(sqlResult.getString("airplanemodel"));
                }
                if (sqlResult.getString("airplanemake") != null) {
                    aircraft.setAirplaneMake(sqlResult.getString("airplanemake"));
                }
                if (sqlResult.getString("manufactureyear") != null) {
                    aircraft.setManufactureYear(sqlResult.getString("manufactureyear"));
                }
                if (sqlResult.getString("airplanecolor") != null) {
                    aircraft.setAirplaneColorTrim(sqlResult.getString("airplanecolor"));
                }
                if (sqlResult.getString("numberofoccupants") != null) {
                    aircraft.setNumberOfOccupants(sqlResult.getString("numberofoccupants"));
                }
                if (sqlResult.getString("homebase") != null) {
                    aircraft.setHomeBase(sqlResult.getString("homebase"));
                }
                if (sqlResult.getString("needjudging") != null) {
                    aircraft.setNeedJudging(sqlResult.getString("needjudging"));
                }
                if (sqlResult.getString("category") != null) {
                    aircraft.setCategory(sqlResult.getString("category"));
                }

                recordFound = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

            if (recordFound != true) {
                try {
                    String username = "airplane";
                    String password = "password";
                    String dbURL = "jdbc:mysql://localhost:3306/faabase";

                    String sqlQuery = "SELECT NNUMBER,MFRMDLCODE,YEARMFR FROM master " + "WHERE NNUMBER ='" + nNum + "';";

                    String masterMfrCode = "";

                    Class.forName("com.mysql.jdbc.Driver");

                    Connection connection = DriverManager.getConnection(dbURL, username, password);

                    Statement statement = connection.createStatement();

                    ResultSet sqlResult = statement.executeQuery(sqlQuery);

                    if (sqlResult.first() == true) {
                        aircraft = new Aircraft();

                        aircraft.setNNumber(nNum.toUpperCase());

                        if (sqlResult.getString("MFRMDLCODE") != null) {
                            masterMfrCode = (sqlResult.getString("MFRMDLCODE"));
                        }
                        if (sqlResult.getString("MFRMDLCODE") != null) {
                            masterMfrCode = (sqlResult.getString("MFRMDLCODE"));
                        }
                        if (sqlResult.getString("YEARMFR") != null) {
                            aircraft.setManufactureYear(sqlResult.getString("YEARMFR"));
                        }
                    }

                    if (masterMfrCode.length() > 0) {
                        sqlQuery = "SELECT mfrname,model FROM acftref " + "WHERE code ='" + masterMfrCode + "';";

                        sqlResult = statement.executeQuery(sqlQuery);

                        if (sqlResult.first() == true) {
                            if (sqlResult.getString("mfrname") != null) {
                                aircraft.setAirplaneMake(sqlResult.getString("mfrname"));
                            }
                            if (sqlResult.getString("model") != null) {
                                aircraft.setAirplaneModel(sqlResult.getString("model"));
                            }
                        }
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
            }

        return aircraft;
    }

    public static boolean loadFAARecords(String filePath) {
        boolean retVal = false;

        try {
            String username = "airplane";
            String password = "password";
            String dbURL = "jdbc:mysql://localhost:3306/faabase";

            if (!filePath.equals("MASTER.txt"))
            {
                return false;
            }

            filePath = "/home/fdorigo/" + filePath;

            java.io.File file = new java.io.File(filePath);
            if (!file.exists())
            {
                return false;
            }

            System.out.println("Trying to load: " + filePath);

            String sqlQuery = "TRUNCATE TABLE master;";
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();
            ResultSet nNumberResult = statement.executeQuery(sqlQuery);

            sqlQuery = "LOAD DATA LOCAL INFILE '" + filePath + "' INTO TABLE master " +
                    "FIELDS TERMINATED BY ',' LINES TERMINATED BY '\\n';";

            nNumberResult = statement.executeQuery(sqlQuery);

            retVal = true;

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return retVal;
    }
}
