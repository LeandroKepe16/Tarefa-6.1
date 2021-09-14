<%-- 
    Document   : tabela-price
    Created on : 13 de set. de 2021, 19:54:51
    Author     : leand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
double n1=0, n2=0,n3=0, result=0;
String error = null;
    try{
n1 = Double.parseDouble(request.getParameter("n1"));
}catch(Exception e){
error = "O valor informado como parametro n1('"+request.getParameter("n1")+"')não é um número válido";
    }
    try{
n2 = Double.parseDouble(request.getParameter("n2"));
}catch(Exception e){
error = "O valor informado como parametro n2('"+request.getParameter("n2")+"')não é um número válido";
    }
try{
n3 = Double.parseDouble(request.getParameter("n3"));
}catch(Exception e){
error = "O valor informado como parametro n3('"+request.getParameter("n3")+"')não é um número válido";
    }
    try{
   
    result= (n1*n2)/(1-(1/(Math.pow(1+n2, n3))));
    }catch(Exception e){
    error = "Erro de Calculo " + e.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="cabecalho.jspf" %>
        <hr/><!-- comment --> 
        <h1>Calculo de Amortização</h1>
            
     
         <%if(error !=null){%>
        <div style="color: red"><%=error %></div>
        <%}else{%>
        <div><%= n1 %> * <%=  n2 %>/1-(1/(1+<%=n2%>)<%=n3%> = <%= result %></div>
        <%}%>
        
         <form action="tabelaprice.jsp">
            PV = <input type="string" name="n1" value="1000"/><br><!-- comment -->
            i  =  <input type="string" name="n2" value="0.03"/><br><!-- comment -->
            n  =  <input type="string" name="n3" value="4"/><br><!-- comment -->
            
            <input type="submit" value="="/>
        </form>
        
        
                <a href="index.html"></a>
        <%@include file="rodape.jspf" %>
    </body>
</html>
