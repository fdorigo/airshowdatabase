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

        //TODO remove
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

        int fuse_1=0,lift_1=0,pitc_1=0,land_1=0,cock_1=0,powe_1=0,fini_1=0,inno_1=0,over_1=0;
        int fuse_2=0,lift_2=0,pitc_2=0,land_2=0,cock_2=0,powe_2=0,fini_2=0,inno_2=0,over_2=0;
        int fuse_3=0,lift_3=0,pitc_3=0,land_3=0,cock_3=0,powe_3=0,fini_3=0,inno_3=0,over_3=0;
        int total1, total2, total3, grandtotal;


        try {
            if (fuse1.length()  > 0) {
                fuse_1 = Integer.parseInt(fuse1);
            }
            if (fuse2.length()  > 0) {
                fuse_2 = Integer.parseInt(fuse2);
            }
            if (fuse3.length()  > 0) {
                fuse_3 = Integer.parseInt(fuse3);
            }

            if (lift1.length()  > 0) {
                lift_1 += Integer.parseInt(lift1);
            }
            if (lift2.length()  > 0) {
                lift_2 += Integer.parseInt(lift2);
            }
            if (lift3.length()  > 0) {
                lift_3 += Integer.parseInt(lift3);
            }

            if (pitc1.length()  > 0) {
                pitc_1 += Integer.parseInt(pitc1);
            }
            if (pitc2.length()  > 0) {
                pitc_2 += Integer.parseInt(pitc2);
            }
            if (pitc3.length()  > 0) {
                pitc_3 += Integer.parseInt(pitc3);
            }

            if (land1.length()  > 0) {
                land_1 += Integer.parseInt(land1);
            }
            if (land2.length()  > 0) {
                land_2 += Integer.parseInt(land2);
            }
            if (land3.length()  > 0) {
                land_3 += Integer.parseInt(land3);
            }

            if (cock1.length()  > 0) {
                cock_1 += Integer.parseInt(cock1);
            }
            if (cock2.length()  > 0) {
                cock_2 += Integer.parseInt(cock2);
            }
            if (cock3.length()  > 0) {
                cock_3 += Integer.parseInt(cock3);
            }

            if (powe1.length()  > 0) {
                powe_1 += Integer.parseInt(powe1);
            }
            if (powe2.length()  > 0) {
                powe_2 += Integer.parseInt(powe2);
            }
            if (powe3.length()  > 0) {
                powe_3 += Integer.parseInt(powe3);
            }

            if (fini1.length()  > 0) {
                fini_1 += Integer.parseInt(fini1);
            }
            if (fini2.length()  > 0) {
                fini_2 += Integer.parseInt(fini2);
            }
            if (fini3.length()  > 0) {
                fini_3 += Integer.parseInt(fini3);
            }

            if (inno1.length()  > 0) {
                inno_1 += Integer.parseInt(inno1);
            }
            if (inno2.length()  > 0) {
                inno_2 += Integer.parseInt(inno2);
            }
            if (inno3.length()  > 0) {
                inno_3 += Integer.parseInt(inno3);
            }

            if (over1.length()  > 0) {
                over_1 += Integer.parseInt(over1);
            }
            if (over2.length()  > 0) {
                over_2 += Integer.parseInt(over2);
            }
            if (over3.length()  > 0) {
                over_3 += Integer.parseInt(over3);
            }
        }
        catch (NumberFormatException e) {
            e.printStackTrace();
        }

        total1 =  fuse_1 + lift_1 + pitc_1 + land_1 + cock_1 + powe_1 + fini_1 + inno_1 + over_1;
        total2 =  fuse_2 + lift_2 + pitc_2 + land_2 + cock_2 + powe_2 + fini_2 + inno_2 + over_2;
        total3 =  fuse_3 + lift_3 + pitc_3 + land_3 + cock_3 + powe_3 + fini_3 + inno_3 + over_3;

        grandtotal = total1 + total2 + total3;

        String sqlStatement = "insert into airplanescore2 " +
                "(nnumber, category, " +
                "fuselage, lifting, pitch, landing, cockpit, power, finish, innovation, overall, " +
                "fuselage2, lifting2, pitch2, landing2, cockpit2, power2, finish2, innovation2, overall2, " +
                "fuselage3, lifting3, pitch3, landing3, cockpit3, power3, finish3, innovation3, overall3, " +
                "total1, total2, total3, grandtotal) " +
                "values ('" +
                nnumber  + "', '" +
                category + "', '" +
                fuse_1  + "', '" +
                lift_1  + "', '" +
                pitc_1  + "', '" +
                land_1  + "', '" +
                cock_1  + "', '" +
                powe_1  + "', '" +
                fini_1  + "', '" +
                inno_1  + "', '" +
                over_1  + "', '" +
                fuse_2  + "', '" +
                lift_2  + "', '" +
                pitc_2  + "', '" +
                land_2  + "', '" +
                cock_2  + "', '" +
                powe_2  + "', '" +
                fini_2  + "', '" +
                inno_2  + "', '" +
                over_2  + "', '" +
                fuse_3  + "', '" +
                lift_3  + "', '" +
                pitc_3  + "', '" +
                land_3  + "', '" +
                cock_3  + "', '" +
                powe_3  + "', '" +
                fini_3  + "', '" +
                inno_3  + "', '" +
                over_3  + "', '" +
                total1  + "', '" +
                total2  + "', '" +
                total3  + "', '" +
                grandtotal  + "');";

        System.out.println("Executing: " + sqlStatement);

        String sqlResult = "";

        try {
            int execResult = 0;

            String username = "airplane";
            String password = "password";
            String dbURL = "jdbc:mysql://localhost:3306/airplane";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();

            /* If the plane was already judged, delete the existing record */
            if (nnumber.length() > 0) {
                statement.executeUpdate("delete from airplanescore2 where nnumber='" + nnumber + "';");
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
