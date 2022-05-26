<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
    <head>
        <title>ScarpeX</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="Scarpe, Scarpe da trekking, Scarpe da corsa, Scarpe eleganti ">
        <meta name="description" content="Qui troverai tutti i tipi di scarpe per ogni occasione">
        <meta name="author" content="Floris Alessandro">
        <link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
    </head>
    <body>
        
        <%@ include file="header.jsp" %>
         
       <%@ include file="navbar.jsp" %>
        
        <div class="row content-wrapper">
            <main class="col-8 col-s-12 wrapper ">

                <section>

                    <h2>Valore 1</h2>

                    <h2>Valore 2</h2>

                    <h2>Valore 3</h2>

                </section>

                <section>
                    <h2>Una visione moderna delle calzature</h2>

                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                        It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
                        It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
                        and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>


                    
                    <a href="chi-siamo.jsp">Scopri chi siamo</a>
                    
                </section>

            </main>
            
            <%@ include file="aside.jsp" %>
        
        </div> 
        

        <%@ include file="footer.jsp" %>

    </body>
</html>
