package airplane;

import java.io.IOException;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author fdorigo
 */
public class DeleteRecordServlet extends HttpServlet {

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
        String message = "";
        String nNumber = request.getParameter("nNumber");
        String sqlResult = "";
        String sqlStatement = "";
        String deleteParam = request.getParameter("deleteParam");
        boolean deleteRec = false;
        boolean deleteScr = false;

        if (nNumber == null || nNumber.length() == 0) {
            message = "Please provide the N-Number, and hit the delete button again";
            url = "/delete_record.jsp";
            request.setAttribute("message", message);
            request.setAttribute("updateRecord", "false");
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
            return;
        }

        sqlStatement = "delete from Record where nnumber='" + nNumber + "';";

        if (deleteParam != null) {
            if (deleteParam.equals("Expunge Record")) {
                deleteRec = true;
            } 
            else if (deleteParam.equals("Clear Score")) {
                sqlStatement = "delete from airplanescore where nnumber='" + nNumber + "';";
                deleteScr = true;
            } 
        }


        try {
            String username = "airplane";
            String password = "password";
            String dbURL = "jdbc:mysql://localhost:3306/airplane";

            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();
            int execResult = statement.executeUpdate(sqlStatement);

            if (deleteScr == true && execResult == 1)
            {
                sqlStatement = "update Record set judged='0'" + " where nnumber='" +  nNumber + "';";
                execResult = statement.executeUpdate(sqlStatement);
            }

            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession();
        session.setAttribute("sqlResult", sqlResult);

        url = "/admin.jsp";
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
