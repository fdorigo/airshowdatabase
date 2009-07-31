/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package airplane;

import java.io.IOException;
import java.io.PrintWriter;
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
public class JudgeAirplane extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String cat1, cat2, cat3, cat4, cat5, cat6, cat7, cat8, cat9, cat10, cat11, cat12, cat13, cat14, cat15;

        cat1  = request.getParameter("cat1");
        cat2  = request.getParameter("cat2");
        cat3  = request.getParameter("cat3");
        cat4  = request.getParameter("cat4");
        cat5  = request.getParameter("cat5");
        cat6  = request.getParameter("cat6");
        cat7  = request.getParameter("cat7");
        cat8  = request.getParameter("cat8");
        cat9  = request.getParameter("cat9");
        cat10 = request.getParameter("cat10");
        cat11 = request.getParameter("cat11");
        cat12 = request.getParameter("cat12");
        cat13 = request.getParameter("cat13");
        cat14 = request.getParameter("cat14");
        cat15 = request.getParameter("cat15");

        if (cat1  == null) { cat1  = ""; }
        if (cat2  == null) { cat2  = ""; }
        if (cat3  == null) { cat3  = ""; }
        if (cat4  == null) { cat4  = ""; }
        if (cat5  == null) { cat5  = ""; }
        if (cat6  == null) { cat6  = ""; }
        if (cat7  == null) { cat7  = ""; }
        if (cat8  == null) { cat8  = ""; }
        if (cat9  == null) { cat9  = ""; }
        if (cat10 == null) { cat10 = ""; }
        if (cat11 == null) { cat11 = ""; }
        if (cat12 == null) { cat12 = ""; }
        if (cat13 == null) { cat13 = ""; }
        if (cat14 == null) { cat14 = ""; }
        if (cat15 == null) { cat15 = ""; }

        String nnumber = request.getParameter("nnumber");

        String sqlStatement = "insert into airplanescore" +
                "(nnumber, cat11, cat12, cat13, cat14, cat15, " +
                          "cat21, cat22, cat23, cat24, cat25, " +
                          "cat31, cat32, cat33, cat34, cat35) " +
                          "values ('" +
                          nnumber  + "', '" +
                          cat1  + "', '" +
                          cat2  + "', '" +
                          cat3  + "', '" +
                          cat4  + "', '" +
                          cat5  + "', '" +
                          cat6  + "', '" +
                          cat7  + "', '" +
                          cat8  + "', '" +
                          cat9  + "', '" +
                          cat10 + "', '" +
                          cat11 + "', '" +
                          cat12 + "', '" +
                          cat13 + "', '" +
                          cat14 + "', '" +
                          cat15 + "');";




        System.out.println("Executing: " + sqlStatement);

        String sqlResult = "";

        try {
            String username = "airplane";
            String password = "password";
            String dbURL = "jdbc:mysql://localhost:3306/AIRPLANE";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();

            if (nnumber.length() > 0) {
                System.out.println("Deleting record...");
                statement.executeUpdate("delete from airplanescore where nnumber='" + nnumber + "';");
            }

            System.out.println("Updating record...");
            int execResult = statement.executeUpdate(sqlStatement);

            /**
             * If all the judge fields have been filled, then remove the airplane from the judgeable list...
             */
            if ( cat1.length()  > 0 && cat2.length()  > 0 && cat3.length()  > 0 && cat4.length()  > 0 && cat5.length()  > 0 &&
                 cat6.length()  > 0 && cat7.length()  > 0 && cat8.length()  > 0 && cat9.length()  > 0 && cat10.length() > 0 &&
                 cat11.length() > 0 && cat12.length() > 0 && cat13.length() > 0 && cat14.length() > 0 && cat15.length() > 0 &&
                 execResult == 1 )
            {
                System.out.println("Airplane has been fully judged...");

                int c1,c2,c3,c4,c5,all;

                c1 = Integer.parseInt(cat1) + Integer.parseInt(cat6)  + Integer.parseInt(cat11);
                c2 = Integer.parseInt(cat2) + Integer.parseInt(cat7)  + Integer.parseInt(cat12);
                c3 = Integer.parseInt(cat3) + Integer.parseInt(cat8)  + Integer.parseInt(cat13);
                c4 = Integer.parseInt(cat4) + Integer.parseInt(cat9)  + Integer.parseInt(cat14);
                c5 = Integer.parseInt(cat5) + Integer.parseInt(cat10) + Integer.parseInt(cat15);
                all = c1 + c2 + c3 + c4 + c5;

                sqlStatement = "update airplanescore set " +
                        "c1='" + c1 + "', " +
                        "c2='" + c2 + "', " +
                        "c3='" + c3 + "', " +
                        "c4='" + c4 + "', " +
                        "c5='" + c5 + "', " +
                        "overall='" + all + "' " +
                        "where nnumber='" + nnumber + "';";
                execResult = statement.executeUpdate(sqlStatement);

                sqlStatement = "update Record set judged='1' where nnumber='" + nnumber + "';";
                execResult = statement.executeUpdate(sqlStatement);

            }

            sqlStatement = "select nnumber,airplanemake,airplanemodel,needjudging,judged from Record where needjudging='1' order by nnumber";
            ResultSet resultSet = statement.executeQuery(sqlStatement);
            sqlResult = DBUtil.getJudgableTable(resultSet, false);

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
        dispatcher.forward(request, response);    }

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
