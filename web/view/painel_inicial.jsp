<%-- 
    Document   : painel_inicial
    Created on : Dec 10, 2018, 7:15:04 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Sessao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/painel_layout.css" rel="stylesheet" type="text/css"/>
        <title>Pagina inicial</title>
    </head>
    <body>
        
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP"/>
        </div>
        
        <div class="painelCompleto">
            
            <a href="painel_endereco.jsp" class="fill-div">
                <div class="div-clicavel-1">
                    <p>Dados de endereco</p>
                </div>
            </a>
            
            <a href="painel_contato.jsp" class="fill-div">
                <div class="div-clicavel-2">
                    <p>Dados de contato</p>
                </div>
            </a>
            
            <a href="painel_conta.jsp" class="fill-div">
                <div class="div-clicavel-3">
                    <p>Meus dados</p>
                </div>
            </a>
            
            <a href="painel_fatura.jsp" class="fill-div">
                <div class="div-clicavel-4">
                    <p>Emissão de Fatura</p>
                </div>
            </a>
            
            <a href="../index.jsp" class="fill-div">
                <div class="div-clicavel-4">
                    <p>Sair</p>
                </div>
            </a>
            
        </div>
    </body>
</html>
