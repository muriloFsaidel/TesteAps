<%-- 
    Document   : nova_palestra
    Created on : Dec 15, 2018, 4:56:55 PM
    Author     : muril
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Sessao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ContatoDAO"%>
<%@page import="model.contato"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/layout.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-2.2.4.js" crossorigin="anonymous"></script>
        <title>Cadastrar novo contato</title>
    </head>
    <body>
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP"/>
        </div>
        <div class="pagLogin">
            <div class="form">
                <h1>Sistema de Emissão de Fatura</h1>
                <h2>Cadastrar novo contato</h2>
                <form class="formLogin" action="../controller/executa_novoContato.jsp" method="post">
                    <input type="text" name="email" onblur="validacaoEmail(email)" placeholder="Seu email" maxlength="60"/>
                    <input type="text" name="facebook" id="facebook" maxlength="60" placeholder="Seu facebook"/>
                    <input type="text" name="twitter" placeholder="seu twitter"/>
                    <input type="text" name="cpf_cliente" id="cpf_cliente" maxlength="14" placeholder="CPF do Cliente" />
                    <div  id="msgemail"></div>
                    <input type="submit" value="Cadastrar"/>
                    <div class="voltar">
                        <br>
                        <a href="painel_contato.jsp"> Voltar</a>
                    </div>              
                </form>
            </div>
        </div>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>            
        <script>
                        $(document).ready(function () {
                          var  $cliCpf = $("#cpf_cliente");
                          $cliCpf.mask('000.000.000-00', {reverse: true});    
                      });
        </script>    
        
        <script>
         function  validacaoEmail(field){
          user = field.value.substring(0, field.value.indexOf("@"));
          domain = field.value.substring(field.value.indexOf("@")+ 1, field.value.length);
          
         if((user.length >=1) &&
            (domain.length >=3) &&
            (user.search("@")==-1) &&
            (domain.search("@")==-1) &&
            (user.search(" ")==-1) &&
            (domain.search(" ")==-1) &&
            (domain.search(".")!=-1) &&
            (domain.indexOf(".") >=1)&&
            (domain.lastIndexOf(".") < domain.length -1)) {
         document.getElementById("msgemail").innerHTML ="E-mail válido";
         alert("E-mail valido");
         } 
         else{
         document.getElementById("msgemail").innerHTML="<font color='red'>E-mail inválido </font>";    
         alert("E-mail invalido");
         }
         }
        </script>
                         
    </body>
</html>
