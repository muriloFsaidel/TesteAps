<%-- 
    Document   : inserir
    Created on : Dec 11, 2018, 6:51:46 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/layout.css" rel="stylesheet" type="text/css"/>
        <script src="https:ajax.googleapis.comajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script type="text/javascript" src="ttps://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
        <script src="https://code.jquery.com/jquery-2.2.4.js" crossoring="anonymous"></script>
        <title>Cadastrar novo cliente</title>
    </head>
    <body>
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP"/>
        </div>
        <div class="pagLogin">
            <div class="form">
                <h1> Sistema de Emsissão de Faturas</h1>
                <h2> Criar nova Conta </h2>
                <form class="formLogin" action="../controller/executa_inserir.jsp" method="post">
                   <input type="text" name="nome" placeholder="Nome_Completo"/>
                   <input type="text" name="cpf" id="cpf" maxlength="14" placeholder="CPF"/>
                   <input type="password" name="senha" id="senha" placeholder="Senha"/>
                   <select name="Niveis">
                       <option value="cliente" id="cli">Cliente</option>
                   </select>
                   <input type="submit" value="Criar conta"/>
                   <div class="voltar">
                   <br>    
                   <a href="../index.jsp">Voltar</a>
                   </div>
                </form>            
            </div>
        </div>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
        <script>
             $(document).ready(function (){
                var $Cpf = $("#cpf");
                $Cpf.mask('000.000.000-00', {reverse: true});
             });
        </script>  
        
    </body>
</html>
