<%-- 
    Document   : executa_inserir
    Created on : Dec 11, 2018, 9:39:09 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@page import="javax.swing.*"%>
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
                
                if(request.getParameter("cpf").equals("") || request.getParameter("senha").equals(""))
                {
                    response.sendRedirect("../index.jsp");
                }else{
                    cli.setNome(request.getParameter("nome"));
                    cli.setCpf(request.getParameter("cpf"));
                    cli.setSenha(request.getParameter("senha"));
                    cli.setCli_nivel(request.getParameter("Niveis"));
                    cliDAO.inserir(cli);
                    response.sendRedirect("../index.jsp");
                }
            }catch(Exception e){
                throw new RuntimeException("erro ao inseir cliente: " + e);
            }
            
            
        %>
    </body>
</html>
