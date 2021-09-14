<%-- 
    Document   : index
    Created on : 13 de set. de 2021, 20:52:12
    Author     : leand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora de Amortização</title>
    </head>
    <body>
         
       <%@include file="cabecalho.jspf" %>
        <h1>JavaEE Aluno:Leandro Kepe de Souza Pinto RA:1290482013026</h1>
        <form action="tabelaprice.jsp">
            PV = <input type="string" name="n1" value="1000"/><br><!-- comment -->
            i  =  <input type="string" name="n2" value="0.03"/><br><!-- comment -->
            n  =  <input type="string" name="n3" value="4"/><br><!-- comment -->
            
            <input type="submit" value="="/>
        </form>
       
        <%@include file="rodape.jspf" %>
    </body>
</html>
