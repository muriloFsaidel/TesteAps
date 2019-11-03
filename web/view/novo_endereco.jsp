<%-- 
    Document   : novo_local
    Created on : Dec 17, 2018, 5:29:26 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/layout.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"</script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"</script>
        <script src="https://code.jquery.com/jquery-2.2.4.js" crossorigin="anonymous"></script>
        <title>Cadastrar novo endereco</title>
    </head>
    <body>
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP"/>
        </div>
        <div class="pagLogin">
            <div class="form">
                <h1>Sistema de Emissão de Faturas</h1>
                <h2>Cadastrar novo endereco</h2>
                <form class="formLogin" action="../controller/executa_novoEndereco.jsp" method="post">
                    <input type="text" name="logradouro" placeholder="Sua rua"/>
                    <input type="text" name="numero" maxlength="14" placeholder="Seu numero"/>
                    <input type="text" name="bairro" placeholder="Seu bairro"/>
                    <input type="text" name="cidade" placeholder="Sua cidade"/>
                    <input type="text" name="estado" placeholder="Seu estado"/>
                    <input type="text" name="cpf_cliente" id="cpf_cliente" placeholder="cpf_cliente"/>
                    <input type="submit" value="Cadastar endereco"/>
                    <div class="voltar">
                        <br>
                        <a href="painel_endereco.jsp">Voltar</a>
                    </div>
                </form>
            </div>
        </div>
        
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
        <script>
            $(document).ready(function () {
               var $UsuarioCpf = $("#cpf_cliente");
               $UsuarioCpf.mask('000.000.000-00', {reverse: true});
            });
        </script>    
    </body>
</html>
