<%-- 
    Document   : alteraPalestra
    Created on : Dec 16, 2018, 5:41:13 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.EnderecoDAO"%>
<%@page import="model.endereco"%>
<%@page import="model.Sessao"%>
<%@page import="java.util.ArrayList"%>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/layout.css" rel="stylesheet" type="text/css"/>
        <title>Alterar dados de Endereco</title>
    </head>
    <body>
        
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP" />
        </div>
        <div class="pagLogin">
            <div class="form">
                <form class="formLogin" action="../controller/executa_alteraEndereco.jsp" method="post">
                   <input type="text" name="Id_endereco" placeholder="" readonly="readonly" value="<%=request.getParameter("Id_endereco")%>"/>
                   <label>Logradouro</label><input  type="text" name="logradouro"   placeholder="Rua" value="<%=request.getParameter("logradouro")%>"/>
                   <label>Número</label><input type="text" name="numero"    placeholder="n° da residência" value="<%=request.getParameter("numero")%>"/>
                   <label>bairro</label><input type="text" name="bairro"  placeholder="bairro" value="<%=request.getParameter("bairro")%>"/>                   
                   <label>cidade</label> <input type="text" name="cidade"  placeholder="cidade" value="<%=request.getParameter("cidade")%>"/>
                   <label>estado</label><input type="text" name="estado" placeholder="estado" value="<%=request.getParameter("estado")%>"/>
                   <label>Cpf do cliente</label><input type="text" name="cpf_cliente" readonly="readonly" placeholder="cpf do cliente" value="<%=request.getParameter("cpf_cliente")%>"/>
                        <input type="submit" value="Alterar"/>
                        <div class="voltar">
                            <br>
                            <a href="consulta_Fatura.jsp">Voltar</a>
                        </div>
                </form>
            </div>
        </div>
                        
                        
    </body>
</html>
