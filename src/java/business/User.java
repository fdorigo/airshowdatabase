/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package business;

/**
 *
 * @author fdorigo
 */
public class User {

    public User() {
        firstName = "";
        lastName = "";
        addressStreetOne = "";
        addressStreetTwo = "";
        addressCity = "";
        addressState = "";
        addressZip = "";
        primaryPhone = "";
        secondaryPhone = "";
        emailAddress = "";
    }

    public User(String firstName, String lastName, String emailAddress) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.emailAddress = emailAddress;
    }

    public User(String firstName, String lastName, String addressStreetOne, String addressStreetTwo, String addressCity, String addressState, String addressZip, String primaryPhone, String secondaryPhone, String emailAddress) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.addressStreetOne = addressStreetOne;
        this.addressStreetTwo = addressStreetTwo;
        this.addressCity = addressCity;
        this.addressState = addressState;
        this.addressZip = addressZip;
        this.primaryPhone = primaryPhone;
        this.secondaryPhone = secondaryPhone;
        this.emailAddress = emailAddress;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddressStreetOne() {
        return addressStreetOne;
    }

    public void setAddressStreetOne(String addressStreetOne) {
        this.addressStreetOne = addressStreetOne;
    }

    public String getAddressCity() {
        return addressCity;
    }

    public void setAddressCity(String addressCity) {
        this.addressCity = addressCity;
    }

    public String getAddressState() {
        return addressState;
    }

    public void setAddressState(String addressState) {
        this.addressState = addressState;
    }

    public String getAddressStreetTwo() {
        return addressStreetTwo;
    }

    public void setAddressStreetTwo(String addressStreetTwo) {
        this.addressStreetTwo = addressStreetTwo;
    }

    public String getAddressZip() {
        return addressZip;
    }

    public void setAddressZip(String addressZip) {
        this.addressZip = addressZip;
    }

    public String getPrimaryPhone() {
        return primaryPhone;
    }

    public void setPrimaryPhone(String primaryPhone) {
        this.primaryPhone = primaryPhone;
    }

    public String getSecondaryPhone() {
        return secondaryPhone;
    }

    public void setSecondaryPhone(String secondaryPhone) {
        this.secondaryPhone = secondaryPhone;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    private String firstName;
    private String lastName;
    private String addressStreetOne;
    private String addressStreetTwo;
    private String addressCity;
    private String addressState;
    private String addressZip;
    private String primaryPhone;
    private String secondaryPhone;
    private String emailAddress;

}
