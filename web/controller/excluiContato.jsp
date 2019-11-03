<%-- 
    Document   : excluirPalestra
    Created on : Dec 16, 2018, 5:33:26 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ContatoDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
           try{
               ContatoDAO ctoDAO = new ContatoDAO();
               ctoDAO.excluir(Integer.parseInt(request.getParameter("Id_contato")));
               response.sendRedirect("../view/consulta_contato.jsp");
               
           }catch(Exception e){
               throw new RuntimeException("erro ao excluir Contato: " + e);
           }
         %>
         
    </body>
</html>
