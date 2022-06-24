<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
    <head>
        <title>MetaFace - Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="Metaverse, Meta, Avatar, Face, Virtual">
        <meta name="description" content="Loggati o Registrati su MetaFace">
        <meta name="author" content="Floris Alessandro">
        <link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
    </head>
    <body>
        
        <%@ include file="header.jsp" %>
        
       <%@ include file="navbar.jsp" %>

        <div class="row content-wrapper">
            <main class="col-8 col-s-12 wrapper">
                  
                <c:choose>
                    <c:when  test="${logged == 'true'}">
                        
                         <section class="login-wrapper">
                            <h2>Sei gia loggato!</h2>
                             <form class="login-form" action="LogoutController" method="post">
                                <button class="login-button" type="submit">Logout</button>
                            </form>

                        </section>
                        
                    </c:when>
                    <c:otherwise>
                        <section class="login-wrapper">
                            <h2>Login</h2>
                             <form class="login-form" action="LoginController" method="post">
                                <div class="input-wrapper">
                                    <label for="email-login">Email</label>
                                    <input type="text" name="username" id="email-login" />
                                </div>
                                <div class="input-wrapper">
                                    <label for="password-login">Password</label>
                                    <input type="password" name="password" id="password-login" />
                                </div>
                                <button class="login-button" type="submit">Login</button>
                            </form>

                        </section>
                        <section class="login-wrapper">
                            <h2>Registrati</h2>
                             <form class="login-form" action="" method="post">
                                <div class="input-wrapper">
                                    <label for="nome">Nome</label>
                                    <input type="text" name="nome" id="nome" />
                                </div>
                                <div class="input-wrapper">
                                    <label for="cognome">Cognome</label>
                                    <input type="text" name="cognome" id="cognome" />    
                                </div>
                                <div class="input-wrapper">
                                    <label for="email-registrazione">Email</label>
                                    <input type="text" name="email" id="email-registrazione" />    
                                </div>
                                 <div class="input-wrapper">
                                    <label for="citta">Citta</label>
                                    <input type="text" citta="cognome" id="citta" />    
                                </div>
                                <div class="input-wrapper">
                                    <label for="password-registrazione">Password</label>
                                    <input type="password" name="password" id="password-registrazione" />
                                </div>
                                <button class="login-button" type="submit">Registrati</button>
                            </form>
                        </section>
                    </c:otherwise>
                </c:choose>
                
            </main>

            <%@ include file="aside.jsp" %>
        </div>
        
        <%@ include file="footer.jsp" %>
        
    </body>
</html>
