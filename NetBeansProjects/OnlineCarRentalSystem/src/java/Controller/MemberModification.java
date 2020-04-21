/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Models.Credit;
import Models.User;
import dao.UserDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ninhthelam
 */
public class MemberModification extends HttpServlet {

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
        String email = request.getParameter("email").trim();
        String fullname = request.getParameter("fullname").trim();
        String password = request.getParameter("password").trim();
        String phone = request.getParameter("phone").trim();
        String carnum = request.getParameter("carnum").trim();
        String expiredate = request.getParameter("expiredate").trim();
        String dor = request.getParameter("dor").trim();
        String totalpay = request.getParameter("totalpay").trim();
        request.setAttribute("email", email);
        request.setAttribute("fullname", fullname);
        request.setAttribute("password", password);
        request.setAttribute("phone", phone);
        request.setAttribute("dor", dor);
        request.setAttribute("carnum", carnum);
        request.setAttribute("expiredate", expiredate);
        request.setAttribute("totalpay", totalpay);
        User user = new User(fullname,email,password,phone,dor);
        new UserDAOImpl().updateAccount(user);
        Credit credit = new Credit(email,Integer.parseInt(carnum),expiredate,Integer.parseInt(totalpay));
        new UserDAOImpl().updateAccount(credit);
        request.getRequestDispatcher("account_modification.jsp").forward(request, response);
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
