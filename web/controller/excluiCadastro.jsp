<%-- 
    Document   : excluiCadastro
    Created on : Dec 15, 2018, 10:14:44 AM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Sessao"%>
<%@page import="dao.ClienteDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          try{  
          ClienteDAO cliDAO = new ClienteDAO();
          Sessao sessao = Sessao.getInstance();
          
          cliDAO.excluir(sessao.getUsuario());
          response.sendRedirect("../index.jsp");
          }catch(Exception e){
              throw new RuntimeException("erro ao excluir Cadastro " + e);
          }
        %>    
    </body>
</html>
