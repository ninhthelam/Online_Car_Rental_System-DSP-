/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Models.Credit;
import Models.Reservation;
import dao.UserDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ninhthelam
 */
public class ReservationCar extends HttpServlet {

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
        String pickdate = request.getParameter("pickdate").trim();
        String returndate = request.getParameter("returndate").trim();
        String email = request.getParameter("email").trim();
        String car_id = request.getParameter("car_id").trim();
        String location = request.getParameter("location").trim();
        String carnum = request.getParameter("carnum");
        String expiredate = request.getParameter("expireday");
        String totalpay = request.getParameter("total");
        request.setAttribute("pickdate", pickdate);
        request.setAttribute("returndate", returndate);
        request.setAttribute("email", email);
        request.setAttribute("car_id", car_id);
        request.setAttribute("location", location);
        request.setAttribute("carnum", carnum);
        request.setAttribute("expiredate", expiredate);
        request.setAttribute("totalpay", totalpay);
        Reservation reservation = new Reservation(Integer.parseInt(car_id),pickdate,returndate,"Waiting",location,email);
        new UserDAOImpl().insertReservation(reservation);
        Credit credit = new Credit(email, Integer.parseInt(carnum),expiredate,Integer.parseInt(totalpay));
        new UserDAOImpl().insertCredit(credit);
        request.getRequestDispatcher("/home.jsp").forward(request, response);
        
        
        
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
