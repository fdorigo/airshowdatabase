/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package airplane;

import java.io.IOException;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import javax.servlet.RequestDispatcher;
import sql.DBUtil;
/**
 *
 * @author fdorigo
 */
public class RetrieveScoreServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String sqlResult = "";
        String sqlStatement;
        String nnumbers = "";
        String orderby  = "";

        orderby = request.getParameter("orderBy");
        
        if (orderby != null) {
            if (orderby.equals("fuselage")){
                orderby = "category, fuselage";
            }
            else if (orderby.equals("lifting")){
                orderby = "category, lifting";
            }
            else if (orderby.equals("pitch")){
                orderby = "category, pitch";
            }
            else if (orderby.equals("landing")){
                orderby = "category, landing";
            }
            else if (orderby.equals("cockpit")){
                orderby = "category, cockpit";
            }
            else if (orderby.equals("power")){
                orderby = "category, power";
            }
            else if (orderby.equals("finish")){
                orderby = "category, finish";
            }
            else if (orderby.equals("innovation")){
                orderby = "category, innovation";
            }
            else {
                orderby = "category,overall";
            }
        }
        else {
            orderby = "category,overall";
        }


        try {
            String username = "airplane";
            String password = "password";
            String dbURL = "jdbc:mysql://localhost:3306/AIRPLANE";

            sqlStatement = "select nnumber from Record where needjudging='1'";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sqlStatement);

            while (resultSet.next()) {
                nnumbers += (" nnumber='" + resultSet.getString(1) + "'");
                if (resultSet.isLast() != true) {
                    nnumbers += " OR ";
                }
            }

            sqlStatement = "select nnumber,category,overall,fuselage,lifting,pitch,landing,cockpit,power,finish,innovation from airplanescore where " + nnumbers + " order by " + orderby +" desc";
            System.out.println("Retrieve score: " + sqlStatement);
            resultSet = statement.executeQuery(sqlStatement);
            sqlResult = DBUtil.getScoreTable(resultSet);

            resultSet.close();
            statement.close();
            connection.close();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession();
        session.setAttribute("sqlResult", sqlResult);


        String url = "/admin.jsp";
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
