<%-- 
    Document   : executa_alteraPalestra
    Created on : Dec 16, 2018, 9:47:12 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.contato"%>
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
           contato cto = new contato();
           ContatoDAO ctoDAO = new ContatoDAO();
           
            cto.setId_contato(request.getParameter("Id_contato"));
            cto.setEmail(request.getParameter("email"));
            cto.setFacebook(request.getParameter("facebook"));
            cto.setTwitter(request.getParameter("twitter"));
            cto.setCpf_cliente(request.getParameter("cpf_cliente"));
            ctoDAO.alterar(cto);
            
            response.sendRedirect("../view/consulta_contato.jsp");
           }catch(Exception e){
               throw new RuntimeException("erro ao alterar dados de contato: " +e);
           }
         %>   
        
    </body>
</html>
