<%-- 
    Document   : executa_alteraCadastro
    Created on : Dec 14, 2018, 7:11:39 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ClienteDAO"%>
<%@page import="model.cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
      try{
          cliente cli = new cliente();
          ClienteDAO cliDAO = new ClienteDAO();
          
          cli.setNome(request.getParameter("clienteNome"));
          cli.setCpf(request.getParameter("Cpf_cliente"));
          cli.setSenha(request.getParameter("senha"));
          cli.setCli_nivel(request.getParameter("Niveis"));
          cli.setPergunta_senha(request.getParameter("alterarSenha"));
          
          if(cli.getPergunta_senha().equals("Sim")){
              if(!cli.getSenha().equals("")){
                  cliDAO.alterar_senha(cli);
                  response.sendRedirect("../index.jsp");
              }
              else{
                  response.sendRedirect("../view/alteraCadastro.jsp");
              }
          }
          else if(cli.getPergunta_senha().equals("Nao")){
              cliDAO.alterar(cli);
              response.sendRedirect("../index.jsp");
          }
          else{
              response.sendRedirect("../view/alteraCadastro.jsp");
          }
    }catch(Exception e){
           throw new RuntimeException("erro ao executar a alteração do cadastro " + e);       
    }   
%>   
    </body>
</html>
