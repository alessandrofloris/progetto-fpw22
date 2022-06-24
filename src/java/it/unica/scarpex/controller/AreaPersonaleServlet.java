/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package it.unica.scarpex.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alessandrofloris
 */
@WebServlet(name = "areaPersonaleServlet", urlPatterns = {"/areaPersonaleServlet"})
public class AreaPersonaleServlet extends HttpServlet  {

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
        
        HttpSession session = request.getSession(false);
        
        if(session != null) {
            //è loggato e puo accedere alla pagina
            
            request.getRequestDispatcher("area-personale.jsp").forward(request, response);            
        } else {
            //non è loggato
            
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        
        
        
        
        
    }
}
