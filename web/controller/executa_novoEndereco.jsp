<%-- 
    Document   : executa_novoLocal
    Created on : Dec 17, 2018, 5:51:37 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.endereco"%>
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
               endereco endr = new endereco();
               EnderecoDAO endrDAO = new EnderecoDAO();
               
               if(request.getParameter("logradouro").equals("")|| request.getParameter("cpf_cliente").equals("")){
               response.sendRedirect("../view/painel_painel_endereco.jsp");
           }else{
                   endr.setLogradouro(request.getParameter("logradouro"));
                   endr.setNumero(request.getParameter("numero"));
                   endr.setBairro(request.getParameter("bairro"));
                   endr.setCidade(request.getParameter("cidade"));
                   endr.setEstado(request.getParameter("estado"));
                   endr.setCpf_cliente(request.getParameter("cpf_cliente"));
                   endrDAO.inserir(endr);
                   response.sendRedirect("../view/novo_endereco.jsp");
               }
           }catch(Exception e){
               throw new RuntimeException("Erro ao executar a inserção do endereco " + e);
           }
         %>   
    </body>
</html>
