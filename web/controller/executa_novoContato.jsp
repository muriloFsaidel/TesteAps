<%-- 
    Document   : executa_novaPalestra
    Created on : Dec 16, 2018, 11:03:01 AM
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
                
                if(request.getParameter("email").equals("") || request.getParameter("cpf_cliente").equals("")){
                    response.sendRedirect("../view/painel_contato.jsp");
                }else{
                    cto.setEmail(request.getParameter("email"));
                    cto.setFacebook(request.getParameter("facebook"));
                    cto.setTwitter(request.getParameter("twitter"));
                    cto.setCpf_cliente(request.getParameter("cpf_cliente"));
                    ctoDAO.inserir(cto);
                    response.sendRedirect("../view/novo_contato.jsp");
                }
            }catch(Exception e){
                throw new RuntimeException("Erro ao inserir Contato: " + e);
            }
            
        %>    
    </body>
</html>
