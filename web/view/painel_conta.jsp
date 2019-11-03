<%-- 
    Document   : painel_conta
    Created on : Dec 13, 2018, 8:56:55 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Sessao"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/painel2_layout.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meus dados</title>
    </head>
    <body>
        
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP"/>
        </div>
        
        <div class="painelCompleto">
            
            <a href="alteraCadastro.jsp" class="fill-div">
                <div class="div-clicavel-1">
                    <p>Alterar dados de acesso</p>
                </div>
            </a>
            
            <a href="../controller/excluiCadastro.jsp" class="fill-div">
                <div class="div-clicavel-2">
                    <p>Apagar dados de acesso</p>
                </div>
            </a>
            
            <%
             Sessao sessao = Sessao.getInstance();
             String nivel = sessao.getNivel();
             if(nivel.equals("cliente")){
                 out.print("<a href='painel_inicial.jsp' class='fill-div'>");
                 out.print("<div class='div-clicavel-3'>");
                 out.print("<p>Voltar</p>");
                 out.print("</div>");
                 out.print("</a>");
             }
            %>    
        </div>
        
    </body>
</html>
