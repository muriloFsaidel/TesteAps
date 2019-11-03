<%-- 
    Document   : verificarLogin
    Created on : Dec 10, 2018, 5:40:57 PM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ClienteDAO"%>
<%@page import="model.Sessao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscando cadastro</title>
    </head>
    <body>
        <%
            ClienteDAO cliDAO = new ClienteDAO();
            String cpf = request.getParameter("cpf");
            String senha = request.getParameter("senha");
            String nivel = request.getParameter("Niveis");
            boolean status = cliDAO.verificarCliente(cpf,senha,nivel);
            if(status == true){
                Sessao sessao = Sessao.getInstance();
                sessao.setUsuario(cpf);
                sessao.setNivel(nivel);
                if(nivel.equals("cliente")){
                    response.sendRedirect("../view/painel_inicial.jsp");
                }
            }
            else{
                out.println("<script>");
                out.println("alert('Cadastro não encontrado!');");
                out.println("document.location=('../index.jsp');");
                out.println("</script>");
            }
        %>  
    </body>
</html>
