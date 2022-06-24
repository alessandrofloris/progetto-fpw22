<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ScarpeX</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="Scarpe, Scarpe da trekking, Scarpe da corsa, Scarpe eleganti ">
        <meta name="description" content="Qualcosa è andato storto!">
        <meta name="author" content="Floris Alessandro">
        <link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
    </head>
    <body>
        
         <%@ include file="header.jsp" %>
         
        <%@ include file="navbar.jsp" %>
        
        <div class="row content-wrapper">
            <main class="col-8 col-s-12 wrapper ">
                
                 <h1>Errore</h1>
        
                <section>
                    <ul>
                        <c:forEach items="${error}" var="item">
                            <li>${item.getKey()}: ${item.getValue()}</li>
                        </c:forEach>
                    </ul>
                </section>
                
            </main>
        
            <%@ include file="aside.jsp" %>
        
        </div>
            
       <%@ include file="footer.jsp" %>
        
    </body>
</html>
