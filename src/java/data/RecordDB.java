/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package data;

import java.sql.*;
import business.*;

import com.mysql.jdbc.exceptions.*;

/**
 *
 * @author fdorigo
 */
public class RecordDB {
        public static int add(User user, Aircraft aircraft, String needJudging) {

        int retVal = 0;

        String judged;
        if (needJudging.equals("Yes")) {
            judged = "1";
        }
        else {
            judged = "0";
        }

        System.out.println("RecordDB - adding new user");

        String sqlQuery = "insert into Record "
                + "(nnumber, firstname, lastname, addressone, addresstwo, addresscity, "
                + "addressstate, addresszip, primaryphone, secondaryphone, "
                + "emailaddress, arrivaldate, airplanemodel, airplanemake, "
                + "manufactureyear, airplanecolor, numberofoccupants, homebase, "
                + "needjudging, judged) "
                + "values ('"
                + aircraft.getNNumber() + "', '"
                + user.getFirstName() + "', '"
                + user.getLastName() + "', '"
                + user.getAddressStreetOne() + "', '"
                + user.getAddressStreetTwo() + "', '"
                + user.getAddressCity() + "', '"
                + user.getAddressState() + "', '"
                + user.getAddressZip() + "', '"
                + user.getPrimaryPhone() + "', '"
                + user.getSecondaryPhone() + "', '"
                + user.getEmailAddress() + "', '"
                + aircraft.getArrivalDate() + "', '"
                + aircraft.getAirplaneModel() + "', '"
                + aircraft.getAirplaneMake() + "', '"
                + aircraft.getManufactureYear() + "', '"
                + aircraft.getAirplaneColorTrim() + "', '"
                + aircraft.getNumberOfOccupants() + "', '"
                + aircraft.getHomeBase() + "', '"
                + judged
                + "', '0');";

        try {
            String username = "airplane";
            String password = "password";
            String dbURL = "jdbc:mysql://localhost:3306/AIRPLANE";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();

            statement.executeUpdate(sqlQuery);

            retVal = 1;

            if (statement != null) {
                statement.close();
            }
        }
        catch (MySQLIntegrityConstraintViolationException e) {
            retVal = 2;
            e.printStackTrace();
        }
        catch (SQLException e ) {
            e.printStackTrace();
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return retVal;
    }


    public static int update(User user, Aircraft aircraft, String needJudging) {

        int retVal = 0;

        String judged;
        if (needJudging.equals("Yes")) {
            judged = "1";
        }
        else {
            judged = "0";
        }

        System.out.println("RecordDB - updating existing user");

        String sqlQuery = "update Record set " +
                "firstname='"       + user.getFirstName() + "', " +
                "lastname='"        + user.getLastName() + "', " +
                "addressone='"      + user.getAddressStreetOne()  + "', " +
                "addresstwo='"      + user.getAddressStreetTwo()  + "', " +
                "addresscity='"     + user.getAddressCity() + "', " +
                "addressstate='"    + user.getAddressState() + "', " +
                "addresszip='"      + user.getAddressZip() + "', " +
                "primaryphone='"    + user.getPrimaryPhone() + "', " +
                "secondaryphone='"  + user.getSecondaryPhone() + "', " +
                "emailaddress='"    + user.getEmailAddress() + "', " +
                "arrivaldate='"     + aircraft.getArrivalDate() + "', " +
                "airplanemodel='"   + aircraft.getAirplaneModel() + "', " +
                "airplanemake='" + aircraft.getAirplaneMake() + "', " +
                "manufactureyear='"+ aircraft.getManufactureYear() + "', " +
                "airplanecolor='" + aircraft.getAirplaneColorTrim() + "', " +
                "numberofoccupants='"+ aircraft.getNumberOfOccupants() + "', " +
                "homebase='" + aircraft.getHomeBase() + "', " +
                "needjudging='" + judged + "', " +
                "judged='0'" + " where nnumber='" +  aircraft.getNNumber() + "';";

        try {
            String username = "airplane";
            String password = "password";
            String dbURL = "jdbc:mysql://localhost:3306/AIRPLANE";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();

            statement.executeUpdate(sqlQuery);

            retVal = 1;

            if (statement != null) {
                statement.close();
            }
        }
        catch (MySQLIntegrityConstraintViolationException e) {
            retVal = 2;
            e.printStackTrace();
        }
        catch (SQLException e ) {
            e.printStackTrace();
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return retVal;
    }

}
