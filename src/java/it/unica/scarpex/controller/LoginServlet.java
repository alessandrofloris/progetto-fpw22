package it.unica.scarpex.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "login", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

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
                
        String email;
        String pwd;
        
        email = request.getParameter("email");
        pwd = request.getParameter("password");
        
        //check dati input
       if( checkLoginData(email, pwd) ) {
           request.getRequestDispatcher("areaPersonale.jsp").forward(request, response);
       } else {
           request.getRequestDispatcher("login.html").forward(request, response);
       }
        
    }
    
    private boolean checkLoginData(String email, String pwd) {
        
        String correctEmail = "a@gmail.it";
        String correctPwd = "pwd";
        
        return correctEmail.equals(email) && correctPwd.equals(pwd);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
