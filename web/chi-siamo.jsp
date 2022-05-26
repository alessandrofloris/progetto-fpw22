<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
    <head>
        <title>MetaFace - Chi Siamo?</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="Metaverse, Meta, Avatar, Face, Virtual">
        <meta name="description" content="Il Team di MetaFace">
        <meta name="author" content="Floris Alessandro">
        <link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
    </head>
    <body>
       
         <%@ include file="header.jsp" %>
         
        <%@ include file="navbar.jsp" %>
  
        <div class="row content-wrapper">

            <main class="col-8 col-s-12 wrapper">

                <section class="row persona-wrapper">
                        <div class="wrapper contatti-img-wrapper">
                            <img title="Floris Alessandro" alt="Floris Alessandro" src="img/team/alessandro.jpg" width="200" height="200">
                        </div>
                        <div class="wrapper contatti-info-wrapper">
                            <h2>Floris Alessandro</h2>
                            <p>Ciao, sono Alessandro Floris, sono uno studente del secondo anno del corso di Informatica all'Università di Cagliari.</p>
                            <div>
                                <h3>Trovami su:</h3>
                                <p><a href="" target="_blank">github</a></p>
                                <p><a href="" target="_blank">instagram</a></p>
                            </div>
                        </div>
                </section>

                <section class="row persona-wrapper">
                        <div class="wrapper contatti-img-wrapper">
                            <img title="Persona 2" alt="Persona 2" src="img/team/samuele.jpg" width="200" height="200">
                        </div>
                        <div class="wrapper contatti-info-wrapper">
                            <h2>Persona 2</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                            <div>
                                <h3>Trovami su:</h3>
                                <p><a href="" target="_blank">github</a></p>
                                <p><a href="" target="_blank">instagram</a></p>
                            </div>
                        </div>
                </section>

                <section class="row persona-wrapper">
                        <div class="wrapper contatti-img-wrapper">
                            <img title="Persona 3" alt="Persona 3" src="img/team/antonio.jpg" width="200" height="200">
                        </div>
                        <div class="wrapper contatti-info-wrapper">
                            <h2>Persona 3</h2>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                             <div>
                                <h3>Trovami su:</h3>
                                <p><a href="" target="_blank">facebook</a></p>
                                <p><a href="" target="_blank">instagram</a></p>
                            </div>
                        </div>
                </section>

            </main>

            <%@ include file="aside.jsp" %>
            

        </div>
        
        <%@ include file="footer.jsp" %>
        
    </body>
</html>