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

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

import sql.DBUtil;
import java.sql.*;
import business.*;

/**
 *
 * @author fdorigo
 */
public class LookupNNumberServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String url;
        String message;
        String nNumber = request.getParameter("nNumber");
        String forceUp = request.getParameter("updateRecord");

        User user = null;
        Aircraft aircraft = null;

        if (nNumber.length() == 0) {
            message = "Please provide the N-Number, and hit the search button again";
            url = "/nnumber_lookup.jsp";
        } else {

            if (DBUtil.nNumberFound(nNumber) == true) {
                message = "Values filled based on N-Number in the FAA database";

                user = DBUtil.lookupUserByNNumber(nNumber);
                aircraft = DBUtil.lookupAircraftByNNumber(nNumber);
            }
            else {
                message = "The N-Number provided seems to be missing from the FAA database: You can hit the back button and try again or fill in the values manually";
            }

            url = "/register_user.jsp";
        }

        if (user != null) {
            request.setAttribute("user", user);
        }

        if (aircraft != null) {
            request.setAttribute("aircraft", aircraft);
        }
        
        request.setAttribute("message", message);
        request.setAttribute("updateRecord", "false");

        if (forceUp != null) {
            if (forceUp.equals("true")) {
                request.setAttribute("updateRecord", "true");
            }
        }

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
        return "Short description";
    }// </editor-fold>

}
