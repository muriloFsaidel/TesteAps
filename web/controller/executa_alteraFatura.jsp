<%-- 
    Document   : executa_alteraPalestra
    Created on : Dec 16, 2018, 9:47:12 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.conta"%>
<%@page import="dao.contaDAO"%>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           try{
           conta ca = new conta();
           contaDAO caDAO = new contaDAO();
           
            ca.setId_conta(request.getParameter("Id_conta"));
            ca.setValor_conta(request.getParameter("valor_conta"));
            ca.setPer_capita(request.getParameter("per_capita"));
            ca.setNome_cliente(request.getParameter("nome_cliente"));
            ca.setMes(request.getParameter("mes"));
            ca.setVencimento(request.getParameter("vencimento"));
            caDAO.alterar_nome(ca);
            
            
            response.sendRedirect("../view/consulta_Fatura.jsp");
           }catch(Exception e){
               throw new RuntimeException("erro ao alterar dados de Fatura: " +e);
           }
         %>   
        
    </body>
</html>
