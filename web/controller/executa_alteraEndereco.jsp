<%-- 
    Document   : executa_alteraPalestra
    Created on : Dec 16, 2018, 9:47:12 PM
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
           
            endr.setId_endereco(request.getParameter("Id_endereco"));
            endr.setLogradouro(request.getParameter("logradouro"));
            endr.setNumero(request.getParameter("numero"));
            endr.setBairro(request.getParameter("bairro"));
            endr.setCidade(request.getParameter("cidade"));
            endr.setEstado(request.getParameter("estado"));
            endr.setCpf_cliente(request.getParameter("cpf_cliente"));
            endrDAO.alterar(endr);
            
            response.sendRedirect("../view/consulta_Fatura.jsp");
           }catch(Exception e){
               throw new RuntimeException("erro ao alterar dados de Endereco: " +e);
           }
         %>   
        
    </body>
</html>
