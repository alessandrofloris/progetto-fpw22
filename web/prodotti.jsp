<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
     <head>
        <title>MetaFace - Prodotti</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="Metaverse, Meta, Avatar, Face, Virtual">
        <meta name="description" content="Acquista nuovi volti per i tuoi avatar">
        <meta name="author" content="Floris Alessandro">
        <link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
    </head>
    <body>
        
         <%@ include file="header.jsp" %>
        
         <%@ include file="navbar.jsp" %>
       
        <div class="row content-wrapper">
            <main class="col-8 col-s-12 wrapper">

                <h2>I nostri prodotti</h2>

                <section class="row prodotti-wrapper">
                    <div class="prodotti-img-wrapper">
                        <img title="Prodotto 1" alt="Prodotto 1" src="img/prodotti/prodotto1.jpg" width="200" height="200">
                    </div>
                    <div class="prodotti-info-wrapper">
                        <h2>Nome Prodotto 1</h2>
                        <p>Descrizione Prodotto 1</p>
                        <p>Prezzo</p>
                    </div>
                </section>

                 <section class="row prodotti-wrapper">
                    <div class="prodotti-img-wrapper">
                        <img title="Prodotto 1" alt="Prodotto 1" src="img/prodotti/prodotto1.jpg" width="200" height="200">
                    </div>
                    <div class="prodotti-info-wrapper">
                        <h2>Nome Prodotto 1</h2>
                        <p>Descrizione Prodotto 1</p>
                        <p>Prezzo</p>
                    </div>
                </section>

                 <section class="row prodotti-wrapper">
                    <div class="prodotti-img-wrapper">
                        <img title="Prodotto 1" alt="Prodotto 1" src="img/prodotti/prodotto1.jpg" width="200" height="200">
                    </div>
                    <div class="prodotti-info-wrapper">
                        <h2>Nome Prodotto 1</h2>
                        <p>Descrizione Prodotto 1</p>
                        <p>Prezzo</p>
                    </div>
                </section>

                 <section class="row prodotti-wrapper">
                    <div class="prodotti-img-wrapper">
                        <img title="Prodotto 1" alt="Prodotto 1" src="img/prodotti/prodotto1.jpg" width="200" height="200">
                    </div>
                    <div class="prodotti-info-wrapper">
                        <h2>Nome Prodotto 1</h2>
                        <p>Descrizione Prodotto 1</p>
                        <p>Prezzo</p>
                    </div>
                </section>
            </main>

            <%@ include file="aside.jsp" %>
        </div>
        
         <%@ include file="footer.jsp" %>
        
    </body>
</html>
