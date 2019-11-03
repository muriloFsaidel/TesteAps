<%-- 
    Document   : nova_palestra
    Created on : Dec 15, 2018, 4:56:55 PM
    Author     : muril
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Sessao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.contaDAO"%>
<%@page import="dao.Conta_Fatura"%>
<%@page import="model.conta"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/layout.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-2.2.4.js" crossorigin="anonymous"></script>
        <title>Informar dados para emissão de fatura</title>
    </head>
    <body>
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP"/>
        </div>
        <div class="pagLogin">  
            <div class="form">
                <h1>Sistema de Emissão de Fatura</h1>
                <h2>dados</h2>
                    <%
                    Sessao sessao = Sessao.getInstance();    
                    %> 
                <form class="formLogin" action="../controller/executa_nova_Fatura.jsp" method="post">
                    <input type="text" name="metros_cubicos" placeholder="Metros cúbicos" maxlength="60"/>
                    <input type="text" name="num_pessoas" maxlength="60" placeholder="Quantidade de moradores" />   
                    <input type="text" name="nome_cliente" maxlength="14" placeholder="Nome do Cliente" value="<%=sessao.getNome()%>"/>
                    <input type="text" name="mes" id="mes" placeholder="Mês de emissão (ex:Janeiro)"/>
                    <input type="text" name="vencimento" id="vencimen" placeholder="dd/mm/aaaa"/>
                    <input type="submit" value="Cadastrar"/>
                    <div id="msg">
                        <input type="text" name="mensagem" value="<%=request.getParameter("mensagem")%>"/>
                    </div>
                    <div class="voltar">
                        <br>
                        <a href="painel_fatura.jsp"> Voltar</a>
                    </div>              
                </form>
            </div>
        </div>
                      
                   
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>            
        <script>
                        $(document).ready(function () {
                          var $vencimento = $("#vencimen");                  
                          $vencimento.mask('00/00/0000');
                      });
        </script>  
        
        </body>
</html>
