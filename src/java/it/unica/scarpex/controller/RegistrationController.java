package it.unica.scarpex.controller;

import it.unica.scarpex.model.User;
import it.unica.scarpex.service.DaoUser;
import it.unica.scarpex.utils.Validator;
import it.unica.scarpex.utils.ValidatorResponse;
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
@WebServlet(name = "RegistrationController", urlPatterns = {"/RegistrationController"})
public class RegistrationController extends HttpServlet {


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
        
        String username = request.getParameter("username");
        String nome = request.getParameter("nome");
        String cognome = request.getParameter("cognome");
        String email = request.getParameter("email");
        String citta = request.getParameter("citta");
        String password = request.getParameter("password");
    
        ValidatorResponse loginDataValidatorResponse = Validator.validateLoginData(username, password);
        
        //validazione dei dati in ingresso
        if(loginDataValidatorResponse.error()) {
            
            request.setAttribute("error", loginDataValidatorResponse.getMessages());
            request.getRequestDispatcher("error.jsp").forward(request, response);
            
        } else {
            
            //salvataggio dati 
            DaoUser daoUser = new DaoUser();
            daoUser.insert(new User());
            
            //autenticazione & creazione sessione
            HttpSession session = request.getSession();

            session.setAttribute("loggedIn", "true");
            //session.setAttribute("username", username);
            
            request.getRequestDispatcher("area-personale.jsp").forward(request, response);
            
        }
    }
    
}
