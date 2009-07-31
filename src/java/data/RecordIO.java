/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package data;

import java.io.*;
import business.Aircraft;
import business.User;

/**
 *
 * @author fdorigo
 */
public class RecordIO {
    public static void add(User user, Aircraft aircraft, String filepath) 
            throws IOException {

        File file = new File(filepath);

        PrintWriter out = new PrintWriter(
                new FileWriter(file, true));

        String outputLine = user.getEmailAddress() + "|"
                + user.getFirstName() + "|"
                + user.getLastName() + "|"
                + user.getAddressStreetOne() + "|"
                + user.getAddressStreetTwo() + "|"
                + user.getAddressCity() + "|"
                + user.getAddressState() + "|"
                + user.getAddressZip() + "|"
                + user.getPrimaryPhone() + "|"
                + user.getSecondaryPhone() + "| ---- |" 
                + aircraft.getArrivalDate() + "|"
                + aircraft.getNNumber() + "|"
                + aircraft.getAirplaneMake() + "|"
                + aircraft.getAirplaneModel() + "|"
                + aircraft.getManufactureYear() + "|"
                + aircraft.getAirplaneColorTrim() + "|"
                + aircraft.getNumberOfOccupants() + "|"
                + aircraft.getHomeBase();

        out.println( outputLine );

        out.close();
    }
}
