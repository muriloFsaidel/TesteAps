<%-- 
    Document   : alteraPalestra
    Created on : Dec 16, 2018, 5:41:13 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ContatoDAO"%>
<%@page import="model.contato"%>
<%@page import="model.Sessao"%>
<%@page import="java.util.ArrayList"%>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/layout.css" rel="stylesheet" type="text/css"/>
        <title>Alterar dados de contato</title>
    </head>
    <body>
        
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP" />
        </div>
        <div class="pagLogin">
            <div class="form">
                <form class="formLogin" action="../controller/executa_alteraContato.jsp" method="post">
                    <input type="text" name="Id_contato" placeholder="" readonly="readonly" value="<%=request.getParameter("Id_contato")%>"/>
                    <input type="text" name="email" placeholder="Seu nome" value="<%=request.getParameter("email")%>"/>
                    <input type="text" name="facebook" placeholder="Seu CPF" value="<%=request.getParameter("facebook")%>"/>
                    <input type="text" name="twitter" placeholder="Nome do palestrante" value="<%=request.getParameter("twitter")%>"/>
                    <input type="text" name="cpf_cliente" placeholder="CPF do palestrante" readonly="readonly" value="<%=request.getParameter("cpf_cliente")%>"/>
                        <input type="submit" value="Alterar"/>
                        <div class="voltar">
                            <br>
                            <a href="consulta_contato.jsp">Voltar</a>
                        </div>
                </form>
            </div>
        </div>
                        
                        
    </body>
</html>
