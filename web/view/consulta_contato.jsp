<%-- 
    Document   : consulta_agendamento
    Created on : Dec 16, 2018, 11:33:33 AM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.contato"%>
<%@page import="dao.ContatoDAO"%>
<%@page import="model.Sessao"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/consulta_layout.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar dados de contato</title>
    </head>
    <body>
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP"/>
        </div>
        
        <div class="datagrid">
            <div class="myTable">
                <table width="100%" border="0" cellspacing="1px" cellpadding="0">
                    <h1>Seus Contatos</h1>
                    <tr><!-- th = table header-->
                        <th>Id_contato<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th> 
                        <th>email<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                        <th>facebook<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                        <th>twitter<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                        <th>Cpf_cliente<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>                  
                    </tr>
                    
                    <%
                        contato cto = new contato();
                        ContatoDAO agenDAO = new ContatoDAO();
                        
                        ArrayList<contato> lista = agenDAO.listarTodos(Sessao.getInstance().getUsuario());
                        
                        for(int i = 0; i <lista.size(); i++){
                            
                            out.print("<tr>");
                            out.print("<td>"+lista.get(i).getId_contato()+"</td>");
                            out.print("<td>"+lista.get(i).getEmail()+"</td>");
                            out.print("<td>"+lista.get(i).getFacebook()+"</td>");
                            out.print("<td>"+lista.get(i).getTwitter()+"</td>");
                            out.print("<td>"+lista.get(i).getCpf_cliente()+"</td>");                          
                            
                            out.print("<td><a href='../controller/excluiContato.jsp?Id_contato="+lista.get(i).getId_contato()+"'>Cancelar</a></td>");
                            out.print("<td><a href='alteraContato.jsp?Id_contato="+lista.get(i).getId_contato()+
                                       "&email="+lista.get(i).getEmail()+"&facebook="+lista.get(i).getFacebook()+"&twitter="+lista.get(i).getTwitter()+
                                       "&cpf_cliente="+lista.get(i).getCpf_cliente()+"'>Alterar</a></td>");
                            out.print("</tr>");                                  
                            
                        }
                    %>                
                </table>
            </div>       
                    <a href="painel_contato.jsp">Voltar</a>
        </div>
           
    </body>
</html>
