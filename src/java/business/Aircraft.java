package business;

import java.util.GregorianCalendar;

/**
 *
 * @author fdorigo
 */
public class Aircraft {

    public Aircraft() {
        this.arrivalDate = "";
        this.nNumber = "";
        this.airplaneModel = "";
        this.airplaneMake = "";
        this.manufactureYear = "";
        this.airplaneColorTrim = "";
        this.numberOfOccupants = "";
        this.homeBase = "";
        this.needJudging = "";
    }

    public Aircraft(String arrivalDate,
            String nNumber,
            String ariplaneModel,
            String airplaneMake,
            String manufactureYear,
            String airplaneColorTrim,
            String numberOfOccupants,
            String homeBase,
            String needjudge) {
        this.arrivalDate = arrivalDate;
        this.nNumber = nNumber;
        this.airplaneModel = ariplaneModel;
        this.airplaneMake = airplaneMake;
        this.manufactureYear = manufactureYear;
        this.airplaneColorTrim = airplaneColorTrim;
        this.numberOfOccupants = numberOfOccupants;
        this.homeBase = homeBase;
        this.needJudging = needjudge;
    }

    public String getAirplaneModel() {
        return airplaneModel;
    }

    public void setAirplaneModel(String airplaneModel) {
        this.airplaneModel = airplaneModel;
    }

    public String getNeedJudging() {
        return needJudging;
    }

    public void setNeedJudging(String needJudging) {
        this.needJudging = needJudging;
    }

    public String getAirplaneColorTrim() {
        return airplaneColorTrim;
    }

    public void setAirplaneColorTrim(String airplaneColorTrim) {
        this.airplaneColorTrim = airplaneColorTrim;
    }

    public String getAirplaneMake() {
        return airplaneMake;
    }

    public void setAirplaneMake(String airplaneMake) {
        this.airplaneMake = airplaneMake;
    }

    public String getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(String arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

    public String getHomeBase() {
        return homeBase;
    }

    public void setHomeBase(String homeBase) {
        this.homeBase = homeBase;
    }

    public String getManufactureYear() {
        return manufactureYear;
    }

    public void setManufactureYear(String manufactureYear) {
        this.manufactureYear = manufactureYear;
    }

    public String getNNumber() {
        return nNumber;
    }

    public void setNNumber(String nNumber) {
        this.nNumber = nNumber;
    }

    public String getNumberOfOccupants() {
        return numberOfOccupants;
    }

    public void setNumberOfOccupants(String numberOfOccupants) {
        this.numberOfOccupants = numberOfOccupants;
    }

    private String arrivalDate;
    private String nNumber;
    private String airplaneModel;
    private String airplaneMake;
    private String manufactureYear;
    private String airplaneColorTrim;
    private String numberOfOccupants;
    private String homeBase;
    private String needJudging;
}
