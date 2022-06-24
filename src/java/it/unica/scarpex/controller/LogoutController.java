package it.unica.scarpex.controller;

import it.unica.scarpex.model.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.unica.scarpex.utils.Validator;
import it.unica.scarpex.utils.ValidatorResponse;
import it.unica.scarpex.service.DaoUser;
import java.io.IOException;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LogoutController", urlPatterns = {"/LogoutController"})
public class LogoutController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         
        HttpSession session = request.getSession();
        session.invalidate();
        
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
        
        
    }

}
