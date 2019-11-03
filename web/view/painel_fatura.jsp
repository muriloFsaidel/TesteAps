<%-- 
    Document   : painel_agendamento
    Created on : Dec 15, 2018, 10:49:48 AM
    Author     : muril
--%>

<%@page import="model.Sessao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/painel2_layout.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de emissão</title>
    </head>
    <body>
        
        <div class="imgLogo">
            <img src="img//unipmelhorbranco.png" alt="UNIP"/>
        </div>
        
        <div class="painelCompleto">
            
            <a href="nova_fatura.jsp" class="fill-div">
                <div class="div-clicavel-1">
                    <p> informar dados para emissão de fatura </p>
                </div>
            </a>
            
            <a href="consulta_Fatura.jsp" class="fill-div">
                <div class="div-clicavel-2">
                    <p>Consultar faturas </p>
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
