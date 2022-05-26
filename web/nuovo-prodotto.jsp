<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
    <head>
        <title>MetaFace - Inserisci Un Nuovo Prodotto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="Metaverse, Meta, Avatar, Face, Virtual">
        <meta name="description" content="Inserimento di un nuovo prodotto">
        <meta name="author" content="Floris Alessandro">
        <link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
    </head>
    <body>
        
        <%@ include file="header.jsp" %>
        
       <%@ include file="navbar.jsp" %>
        
         <div class="row content-wrapper">
                <main class="col-8 col-s-12 wrapper ">
                
                    <section class="login-wrapper">
                    
                    <h2>Inserisci un nuovo prodotto</h2>

                    <form class="login-form" action="" method="get">

                        <div class="input-wrapper">
                            <label for="nome-prodotto">Nome Prodotto</label>
                            <input type="text" name="nome-prodotto" id="nome-prodotto"/>    
                        </div>
                        
                        <div class="input-wrapper">
                            <label for="descrizione-prodotto">Descrizione Prodotto</label>
                            <textarea rows="4" cols="40" name="descrizione-prodotto" id="descrizione-prodotto"></textarea>    
                        </div>
                        
                        <div class="input-wrapper">
                            <label for="prezzo-prodotto">Prezzo Prodotto</label>
                            <input type="number" step="0.1" min="0" name="prezzo-prodotto" id="prezzo-prodotto" value="0.0"/>
                        </div>
                        
                        <div class="input-wrapper">
                            <label for="immagine-prodotto">Immagine Prodotto</label>
                            <input type="file" name="immagine-prodotto" id="immagine-prodotto" accept="image/*" />    
                        </div>
                        
                        <button class="login-button" type="submit">Inserisci</button>
                    </form>
                </section>
            
            </main>

            <%@ include file="aside.jsp" %>
         </div>
        
         <%@ include file="footer.jsp" %>
        
    </body>
</html>