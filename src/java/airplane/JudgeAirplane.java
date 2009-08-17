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

        String nnumber = request.getParameter("nnumber");
        String category = request.getParameter("category");

        // Judge 1
        String fuse1 = request.getParameter("fuse1");
        String lift1 = request.getParameter("lift1");
        String pitc1 = request.getParameter("pitc1");
        String land1 = request.getParameter("land1");
        String cock1 = request.getParameter("cock1");
        String powe1 = request.getParameter("powe1");
        String fini1 = request.getParameter("fini1");
        String inno1 = request.getParameter("inno1");
        String over1 = request.getParameter("over1");

        // Judge 2
        String fuse2 = request.getParameter("fuse2");
        String lift2 = request.getParameter("lift2");
        String pitc2 = request.getParameter("pitc2");
        String land2 = request.getParameter("land2");
        String cock2 = request.getParameter("cock2");
        String powe2 = request.getParameter("powe2");
        String fini2 = request.getParameter("fini2");
        String inno2 = request.getParameter("inno2");
        String over2 = request.getParameter("over2");

        // Judge 3
        String fuse3 = request.getParameter("fuse3");
        String lift3 = request.getParameter("lift3");
        String pitc3 = request.getParameter("pitc3");
        String land3 = request.getParameter("land3");
        String cock3 = request.getParameter("cock3");
        String powe3 = request.getParameter("powe3");
        String fini3 = request.getParameter("fini3");
        String inno3 = request.getParameter("inno3");
        String over3 = request.getParameter("over3");

        if (fuse1 == null) {
            System.out.println("ERR: fuse 1 is NULL");
        }
        else {
            System.out.println("INF: fuse 1 is: " + fuse1);
        }

        if (fuse1  == null) { fuse1  = ""; }
        if (lift1  == null) { lift1  = ""; }
        if (pitc1  == null) { pitc1  = ""; }
        if (land1  == null) { land1  = ""; }
        if (cock1  == null) { cock1  = ""; }
        if (powe1  == null) { powe1  = ""; }
        if (fini1  == null) { fini1  = ""; }
        if (inno1  == null) { inno1  = ""; }
        if (over1  == null) { over1  = ""; }

        if (fuse2  == null) { fuse2  = ""; }
        if (lift2  == null) { lift2  = ""; }
        if (pitc2  == null) { pitc2  = ""; }
        if (land2  == null) { land2  = ""; }
        if (cock2  == null) { cock2  = ""; }
        if (powe2  == null) { powe2  = ""; }
        if (fini2  == null) { fini2  = ""; }
        if (inno2  == null) { inno2  = ""; }
        if (over2  == null) { over2  = ""; }

        if (fuse3  == null) { fuse3  = ""; }
        if (lift3  == null) { lift3  = ""; }
        if (pitc3  == null) { pitc3  = ""; }
        if (land3  == null) { land3  = ""; }
        if (cock3  == null) { cock3  = ""; }
        if (powe3  == null) { powe3  = ""; }
        if (fini3  == null) { fini3  = ""; }
        if (inno3  == null) { inno3  = ""; }
        if (over3  == null) { over3  = ""; }

        if (nnumber == null) {
            System.out.println("FATAL: nnumber cannot be null");
        }
        if (category == null) {
            System.out.println("FATAL: category cannot be null");
        }

        int fuse=0,lift=0,pitc=0,land=0,cock=0,powe=0,fini=0,inno=0,over=0;

        try {
            if (fuse1.length()  > 0) {
                fuse += Integer.parseInt(fuse1);
            }
            if (fuse2.length()  > 0) {
                fuse += Integer.parseInt(fuse2);
            }
            if (fuse3.length()  > 0) {
                fuse += Integer.parseInt(fuse3);
            }

            if (lift1.length()  > 0) {
                lift += Integer.parseInt(lift1);
            }
            if (lift2.length()  > 0) {
                lift += Integer.parseInt(lift2);
            }
            if (lift3.length()  > 0) {
                lift += Integer.parseInt(lift3);
            }

            if (pitc1.length()  > 0) {
                pitc += Integer.parseInt(pitc1);
            }
            if (pitc2.length()  > 0) {
                pitc += Integer.parseInt(pitc2);
            }
            if (pitc3.length()  > 0) {
                pitc += Integer.parseInt(pitc3);
            }

            if (land1.length()  > 0) {
                land += Integer.parseInt(land1);
            }
            if (land2.length()  > 0) {
                land += Integer.parseInt(land2);
            }
            if (land3.length()  > 0) {
                land += Integer.parseInt(land3);
            }

            if (cock1.length()  > 0) {
                cock += Integer.parseInt(cock1);
            }
            if (cock2.length()  > 0) {
                cock += Integer.parseInt(cock2);
            }
            if (cock3.length()  > 0) {
                cock += Integer.parseInt(cock3);
            }

            if (powe1.length()  > 0) {
                powe += Integer.parseInt(powe1);
            }
            if (powe2.length()  > 0) {
                powe += Integer.parseInt(powe2);
            }
            if (powe3.length()  > 0) {
                powe += Integer.parseInt(powe3);
            }

            if (fini1.length()  > 0) {
                fini += Integer.parseInt(fini1);
            }
            if (fini2.length()  > 0) {
                fini += Integer.parseInt(fini2);
            }
            if (fini3.length()  > 0) {
                fini += Integer.parseInt(fini3);
            }

            if (inno1.length()  > 0) {
                inno += Integer.parseInt(inno1);
            }
            if (inno2.length()  > 0) {
                inno += Integer.parseInt(inno2);
            }
            if (inno3.length()  > 0) {
                inno += Integer.parseInt(inno3);
            }

            if (over1.length()  > 0) {
                over += Integer.parseInt(over1);
            }
            if (over2.length()  > 0) {
                over += Integer.parseInt(over2);
            }
            if (over3.length()  > 0) {
                over += Integer.parseInt(over3);
            }
        }
        catch (NumberFormatException e) {
            e.printStackTrace();
        }

        String sqlStatement = "insert into airplanescore " +
                "(nnumber, fuselage, lifting, pitch, landing, cockpit, power, finish, innovation, overall, category) " +
                "values ('" +
                nnumber  + "', '" +
                fuse  + "', '" +
                lift  + "', '" +
                pitc  + "', '" +
                land  + "', '" +
                cock  + "', '" +
                powe  + "', '" +
                fini  + "', '" +
                inno  + "', '" +
                over  + "', '" +
                category + "');";

        System.out.println("Executing: " + sqlStatement);

        String sqlResult = "";

        try {
            int execResult = 0;

            String username = "airplane";
            String password = "password";
            String dbURL = "jdbc:mysql://localhost:3306/AIRPLANE";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();

            /* If the plane was already judged, delete the existing record */
            if (nnumber.length() > 0) {
                statement.executeUpdate("delete from airplanescore where nnumber='" + nnumber + "';");
                System.out.println("Deleting record: result=" + execResult);
            }

            execResult = statement.executeUpdate(sqlStatement);
            System.out.println("Updating record: result=" + execResult);


            sqlStatement = "update Record set judged='1' where nnumber='" + nnumber + "';";
            execResult = statement.executeUpdate(sqlStatement);
            System.out.println("Airplane has been fully judged: result=" + execResult);

            sqlStatement = "select nnumber,airplanemake,airplanemodel,category,judged from Record where needjudging='1' order by category,nnumber";
            ResultSet resultSet = statement.executeQuery(sqlStatement);
            sqlResult = DBUtil.getJudgableTable(resultSet, false, false);

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
