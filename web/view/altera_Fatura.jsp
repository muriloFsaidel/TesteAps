<%-- 
    Document   : alteraPalestra
    Created on : Dec 16, 2018, 5:41:13 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ContatoDAO"%>
<%@page import="model.contato"%>
<%@page import="model.Sessao"%>
<%@page import="java.util.ArrayList"%>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/layout.css" rel="stylesheet" type="text/css"/>
        <title>Alterar dados de Fatura</title>
    </head>
    <body>
        
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP" />
        </div>
        <div class="pagLogin">
            <div class="form">
                <form class="formLogin" action="../controller/executa_alteraFatura.jsp" method="post">
                    <input type="text" name="Id_conta" placeholder="" readonly="readonly" value="<%=request.getParameter("Id_conta")%>"/>
                   <label class="lb">Valor da Fatura</label><input type="text" name="valor_conta" readonly="readonly" placeholder="Valor a Pagar" value="<%=request.getParameter("valor_conta")%>"/>
                   <label class="lb">Valor por Pessoa</label><input type="text" name="per_capita" readonly="readonly"  placeholder="por pessoa" value="<%=request.getParameter("per_capita")%>"/>
                   <label class="lb">Nome do Cliente</label> <input type="text" name="nome_cliente" placeholder="Nome do cliente" value="<%=request.getParameter("nome_cliente")%>"/>
                   <label class="lb">Mês de Emissão</label> <input type="text" name="mes" placeholder="mês" readonly="readonly" value="<%=request.getParameter("mes")%>"/>
                   <label class="lb">Vencimento</label> <input type="text" name="vencimento" readonly="readonly" placeholder="00/00/0000" value="<%=request.getParameter("vencimento")%>"/>
                   
                   <input type="submit" name="update"value="Alterar"/>                        
                        <div class="voltar">
                            <br>
                            <a href="consulta_Fatura.jsp">Voltar</a>
                        </div>
                </form>
            </div>
        </div>
                        
                        
    </body>
</html>
