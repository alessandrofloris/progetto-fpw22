package it.unica.scarpex.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.unica.scarpex.utils.ValidatorResponse;
import it.unica.scarpex.model.LoginDao;
import it.unica.scarpex.model.LoginDaoMockUp;
import it.unica.scarpex.model.LoginBean;
import it.unica.scarpex.model.User;
import it.unica.scarpex.service.DaoUser;
import java.io.IOException;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
    
        //validazione dati login
       LoginBean loginBean = new LoginBean(username, password);
       ValidatorResponse loginDataValidatorResponse = loginBean.validate();

        if(loginDataValidatorResponse.error()) {
           //i dati inseriti non sono validi
            request.setAttribute("error", loginDataValidatorResponse.getMessages());
            request.getRequestDispatcher("error.jsp").forward(request, response);
            
       } else {
           //proviamo ad autenticare l'utente
            
            LoginDao loginDao = new LoginDaoMockUp();

            boolean logged = loginDao.authenticate(loginBean);


            if(!logged) {
                //autenticazione fallita
                
                loginDataValidatorResponse.createMessage("credenziali", "Le credenziali inserite non sono correte");
                request.setAttribute("error", loginDataValidatorResponse.getMessages());
                request.getRequestDispatcher("error.jsp").forward(request, response);

            } else {
                //utente autenticato
                //creazione sessione
                HttpSession session = request.getSession();
                
                //recupero le informazioni dell'utente loggato
                DaoUser userDao = new DaoUser();
                User loggedUser = userDao.findByUsername(username);
                
                session.setAttribute("logged", "true");
                session.setAttribute("user", loggedUser);
                request.getRequestDispatcher("areaPersonaleServlet").forward(request, response);
            }
       }        
  
    }

}
