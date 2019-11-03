<%-- 
    Document   : executa_novaPalestra
    Created on : Dec 16, 2018, 11:03:01 AM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.conta"%>
<%@page import="dao.contaDAO"%>
<%@page import="dao.Conta_Fatura"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                conta ca = new conta();
                contaDAO caDAO = new contaDAO();
                Conta_Fatura cf = new Conta_Fatura();
                cf.setReaisf(1);
                String metros = request.getParameter("metros_cubicos");
                String mensagem = cf.validacaoConsumo(metros);
                double valor_conta = cf.calcular(request.getParameter("metros_cubicos"));
                double per_capita = valor_conta/Double.parseDouble(request.getParameter("num_pessoas"));
                
                if(request.getParameter("nome_cliente").equals("") || request.getParameter("vencimento").equals("")){
                    response.sendRedirect("../view/painel_fatura.jsp");
                }else{
                    ca.setValor_conta(String.valueOf(cf.calcular(request.getParameter("metros_cubicos"))));
                    ca.setPer_capita(String.valueOf(per_capita));
                    ca.setNome_cliente(request.getParameter("nome_cliente"));
                    ca.setMes(request.getParameter("mes"));
                    ca.setVencimento(request.getParameter("vencimento"));
                    caDAO.inserir(ca);
                    response.sendRedirect("../view/nova_fatura.jsp?mensagem="+mensagem);
                }
            }catch(Exception e){
                throw new RuntimeException("Erro ao inserir fatura: " + e);
            }
            
        %>    
    </body>
</html>
