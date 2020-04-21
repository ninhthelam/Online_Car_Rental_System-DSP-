/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Models.Car;
import dao.CarDAOImpl;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/uploadServlet")

/**
 *
 * @author ninhthelam
 */
public class AddCar extends HttpServlet {

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
        String action = request.getParameter("action");
        //String id = request.getParameter("id").trim();
        String brand = request.getParameter("brand").trim();
        String color = request.getParameter("color").trim();
        String price = request.getParameter("price").trim();
        String modelname = request.getParameter("modelname").trim();
        String numberofpass = request.getParameter("numberofpass").trim();
        String description = request.getParameter("description").trim();
        InputStream inputStream = null; // input stream of the upload file
        String carnumber = request.getParameter("carnumber").trim();

        
        // obtains the upload file part in this multipart request
        Part fileimage = request.getPart("fileimage");
        inputStream = fileimage.getInputStream();
        request.setAttribute("brand",brand);
        request.setAttribute("color", color);
        request.setAttribute("modelname", modelname);
        request.setAttribute("price", price);
        request.setAttribute("numberofpass", numberofpass);
        request.setAttribute("description", description);
        request.setAttribute("carnumber", carnumber);
        //HttpSession s = request.getSession();
        //s.setAttribute("username", username);
        //s.setMaxInactiveInterval(1200);// 20 minutes
        Car car = new Car(inputStream,brand,color,Integer.parseInt(price),modelname,Integer.parseInt(numberofpass),description, carnumber);
        new CarDAOImpl().insertCar(car);    
        request.getRequestDispatcher("/staffdashboard.jsp").forward(request, response);
        
        
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
