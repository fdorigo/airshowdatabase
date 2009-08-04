/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package airplane;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.User;
import business.Aircraft;
import data.RecordIO;
import data.RecordDB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 *
 * @author fdorigo
 */
public class AddRecordServlet extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        /*Aircraft Owner*/
        String firstName = request.getParameter("firstName").toUpperCase();
        String lastName = ""; //request.getParameter("lastName").toUpperCase();
        String addressStreetOne = request.getParameter("addressStreetOne").toUpperCase();
        String addressStreetTwo = request.getParameter("addressStreetTwo").toUpperCase();
        String addressCity = request.getParameter("addressCity").toUpperCase();
        String addressState = request.getParameter("addressState").toUpperCase();
        String addressZip = request.getParameter("addressZip").toUpperCase();
        String primaryPhone = request.getParameter("primaryPhone").toUpperCase();
        String secondaryPhone = request.getParameter("secondaryPhone").toUpperCase();
        String emailAddress = request.getParameter("emailAddress").toUpperCase();

        User user = new User(firstName,
                lastName,
                addressStreetOne,
                addressStreetTwo,
                addressCity,
                addressState,
                addressZip,
                primaryPhone,
                secondaryPhone,
                emailAddress);

        /*Aircraft Information*/
        String arrivalDate = request.getParameter("arrivalDate").toUpperCase();
        String nNumber = request.getParameter("nNumber").toUpperCase();
        String airplaneModel = request.getParameter("airplaneModel").toUpperCase();
        String airplaneMake = request.getParameter("airplaneMake").toUpperCase();
        String manufactureYear = request.getParameter("manufactureYear").toUpperCase();
        String airplaneColorTrim = request.getParameter("airplaneColorTrim").toUpperCase();
        String numberOfOccupants = request.getParameter("numberOfOccupants").toUpperCase();
        String homeBase = request.getParameter("homeBase").toUpperCase();
        String needJudging = request.getParameter("needJudging").toUpperCase();
        String category = request.getParameter("category").toUpperCase();

        Aircraft aircraft = new Aircraft(arrivalDate,
                nNumber,
                airplaneModel,
                airplaneMake,
                manufactureYear,
                airplaneColorTrim,
                numberOfOccupants,
                homeBase,
                needJudging,
                category);

        String message = "";
        String url = "";

        boolean override = false;
        if (request.getParameter("updateRecord") != null) {
            override = request.getParameter("updateRecord").equals("true");
        }
        /**
         * Define mandatory fields here.
         */
        if (firstName.length() == 0 ||
                emailAddress.length() == 0 ||
                primaryPhone.length() == 0 ||
                nNumber.length() == 0 ||
                needJudging.length() == 0) {

            message = "Please fill out all mandatory fields marked with {*}";
            url = "/register_user.jsp";
        } else {

            message = "";
            url = "/confirm_user.jsp";

            ServletContext context = getServletContext();
            String path = context.getRealPath("WEB-INF/Registrants.txt");
            RecordIO.add(user, aircraft, path);
            
            int retVal;
            if (override == false) {
                retVal = RecordDB.add(user, aircraft, needJudging);
            }
            else {
                retVal = RecordDB.update(user, aircraft, needJudging);
            }

            if (retVal == 2) {
                message = "N-Number already entered in the DB";
                url = "/register_user.jsp";
            }
            else if (retVal == 1){
                message = "";
                url = "/confirm_user.jsp";
            }
            else {
                message = "Unknown Database Error";
                url = "/register_user.jsp";
            }
        }

        request.setAttribute("user", user);
        request.setAttribute("aircraft", aircraft);
        request.setAttribute("message", message);
        request.setAttribute("updateRecord", "false");

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Data validation and database insertion for new registrants";
    }// </editor-fold>
}
