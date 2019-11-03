<%-- 
    Document   : alteraCadastro
    Created on : Dec 14, 2018, 5:37:56 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Sessao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/layout.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
        <script src="https://code.jquery.com/jquery-2.2.4.js" crossorigin="anonymous"></script> 
        <title>Alterar meus dados</title>
    </head>
    <body>
        
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP"/>
        </div>
        <div class="pagLogin">
            <div class="form">
                <h1>Sistema de Emissão de Faturas</h1>
                <h2>Alterar meus dados</h2>
                <%
                    Sessao sessao = Sessao.getInstance();
                %>    
                <form class="formLogin" action="../controller/executa_alteraCadastro.jsp" method="post">
                    <input type="text" name="clienteNome" placeholder="Seu nome" value="<%=sessao.getNome()%>" />
                    <input type="text" name="Cpf_cliente" id="UsuarioCpf" maxlength="14" placeholder="Seu CPF" value="<%=sessao.getUsuario()%>" />
                    <select name="Niveis">
                        <option value="pergunta" id="pergunta" selected="">Nível de usuário</option>
                        <option value="cliente" id="cli">Cliente</option>
                    </select>    
                    <select name="alterarSenha">
                        <option value="pergunta_senha" id="pergunta_senha" selected="">
                            Deseja alterar a senha?</option>
                        <option value="Sim" id="sim">Sim</option>
                        <option value="Nao" id="nao">Não</option>
                    </select>
                    <input type="password" name="senha" placeholder="Senha"/>
                    <input type="submit" value="Alterar"/>
                    <div class="voltar">
                        <br>
                        <a href="painel_conta.jsp">Voltar</a>
                    </div>    
                </form>
            </div>
        </div>

                    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
                    <script>
                    $(document).ready(function () {
                       var $Cpf = $("#UsuarioCpf");
                       $Cpf.mask('000.000.000-00', {reverse: true});
                    });                      
                    </script>
    </body>
</html>
