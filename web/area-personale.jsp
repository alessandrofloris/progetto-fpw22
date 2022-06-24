<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ScarpeX</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="Scarpe, Scarpe da trekking, Scarpe da corsa, Scarpe eleganti ">
        <meta name="description" content="La tua area personale, dove trovi tutte le informazioni riguardo al tuo profilo">
        <meta name="author" content="Floris Alessandro">
        <link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
    </head>
    <body>
        
        <%@ include file="header.jsp" %>  
        <%@ include file="navbar.jsp" %>
       
        <div class="row content-wrapper">
            <main class="col-8 col-s-12 wrapper ">
        
                <h1>Area Personale</h1>
                <h2>Utente ${username} autenticato</h2>
                
                <section class="profilo-utente-dettagli-wrapper">
                <h3>Profilo Utente</h3>
                <ul>
                    <li><span>Username: </span>${user.getUsername()}</li>
                    <li><span>Nome: </span>${user.getNome()}</li>
                    <li><span>Cognome: </span>${user.getCognome()}</li>
                    <li><span>Citta: </span>${user.getCitta()}</li>
                    <li><span>Email: </span>${user.getEmail()}</li>
                </ul>
            </section>
            
            </main>
            
                <%@ include file="aside.jsp" %>
        
        </div>
       
        
        <%@ include file="footer.jsp" %>
        
    </body>
</html>
