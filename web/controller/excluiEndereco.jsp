<%-- 
    Document   : excluirPalestra
    Created on : Dec 16, 2018, 5:33:26 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.EnderecoDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
           try{
               EnderecoDAO ctoDAO = new EnderecoDAO();
               ctoDAO.excluir(Integer.parseInt(request.getParameter("Id_endereco")));
               response.sendRedirect("../view/consulta_Fatura.jsp");
               
           }catch(Exception e){
               throw new RuntimeException("erro ao excluir Endereco: " + e);
           }
         %>
         
    </body>
</html>
