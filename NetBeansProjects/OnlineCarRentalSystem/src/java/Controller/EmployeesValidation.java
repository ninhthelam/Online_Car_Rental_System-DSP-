/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dao.EmployeeDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ninhthelam
 */
public class EmployeesValidation extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw=response.getWriter();
        String id = request.getParameter("id").trim();
        String password = request.getParameter("password").trim();
        request.setAttribute("id", id);
        request.setAttribute("password", password);
        HttpSession s = request.getSession();
        //s.setAttribute("username", username);
        s.setMaxInactiveInterval(1200);// 20 minutes
        s.setAttribute("id", id);
        id = (String) s.getAttribute("id");
        String status = new EmployeeDAOImpl().getTitleID(Integer.parseInt(id));
        request.setAttribute("status", status);
        if (new EmployeeDAOImpl().checkLogin(Integer.parseInt(id), password)) {
            if ("ST".equals(status)) {
                request.getRequestDispatcher("staffdashboard.jsp").forward(request, response);
            } else if ("AM".equals(status)) {
                request.getRequestDispatcher("amdashboard.jsp").forward(request, response);
            } else {
                request.setAttribute("errorMessage1", " Account created and waiting for approval from Account Manager  ");
                request.getRequestDispatcher("employeeslogin.jsp").forward(request, response);
                
                

            }

        } else {
            request.setAttribute("errorMessage", "Please enter the correct account");
            request.getRequestDispatcher("employeeslogin.jsp").forward(request, response);

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
