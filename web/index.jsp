<%-- 
    Document   : index
    Created on : Dec 19, 2018, 5:50:23 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "model.Sessao"%>
<%@page import= "dao.ClienteDAO"%>
<%@page import= "javax.swing.*"%>
<%--<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">--%>
<!DOCTYPE html>
<html>
    <head>
        <link href="view/css/layout.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"</script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
        <script src="https://code.jquery.com/jquery-2.2.4.js" crossorigin ="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div class="imgLogo">
            <img src="view/img/unipmelhorbranco.png" alt="UNIP" />
        </div>
        <div class="pagLogin">
            <div class="form">
                <h1>Sistema de Emissão de Faturas</h1>
                <form class="formLogin" action="controller/verificadorLogin.jsp" method="post">
                  <input type="text" name="cpf" id="cpf" maxlength="14" placeholder="CPF"/>
                  <input type="password" name="senha" placeholder="Senha" />
                  <select name="Niveis">
                      <option value="pergunta" id="pergunta" selected="">Nível de usuário</option>
                      <option value="cliente" id="adm">Cliente</option>
                  </select>
                  <input type="submit" value="Entrar" />
                  <div class="nova-conta">
                  <br>
                  <a href="view/inserir.jsp">Criar uma conta</a>
                  </div>
                </form>
            </div>
        </div>  
        
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
        <script> 
           $(document).ready(function () {
           var $Cpf = $("#cpf");
           $Cpf.mask('000.000.000-00', {reverse: true});
       });
        </script>  
    </body>
</html>