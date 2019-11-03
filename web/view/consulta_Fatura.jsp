<%-- 
    Document   : consulta_agendamento
    Created on : Dec 16, 2018, 11:33:33 AM
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.conta"%>
<%@page import="model.endereco"%>
<%@page import="dao.contaDAO"%>
<%@page import="dao.EnderecoDAO"%>
<%@page import="model.Sessao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ListaSimples"%>
<%@page import="dao.NoSimples"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/consulta_layout.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar dados de fatura e endereco</title>
    </head>
    <body>
        <div class="imgLogo">
            <img src="img/unipmelhorbranco.png" alt="UNIP"/>
        </div>
        
        <div class="datagrid">
            <div class="myTable">
                <table width="100%" border="0" cellspacing="1px" cellpadding="0">
                    <h1>Sua Fatura</h1>
                    <tr><!-- th = table header-->
                        <th>Id_conta<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th> 
                        <th>valor_conta<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                        <th>per_capita<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                        <th>nome_cliente<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>    
                        <th>mês<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                        <th>Vencimento<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                    </tr>
                    
                    <%
                        conta ca = new conta();
                        contaDAO caDAO = new contaDAO();
                        
                        ArrayList<conta> lista = caDAO.listarTodos(Sessao.getInstance().getNome());
                        
                        for(int i = 0; i <lista.size(); i++){
                            
                            out.print("<tr>");
                            out.print("<td>"+lista.get(i).getId_conta()+"</td>");
                            out.print("<td>"+lista.get(i).getValor_conta()+"</td>");
                            out.print("<td>"+lista.get(i).getPer_capita()+"</td>");     
                            out.print("<td>"+lista.get(i).getNome_cliente()+"</td>");
                            out.print("<td>"+lista.get(i).getMes()+"</td>");
                            out.print("<td>"+lista.get(i).getVencimento()+"</td>");
                            
                            ListaSimples ls = new ListaSimples();
                            ls.inserirNoInicio(Double.parseDouble(lista.get(i).getValor_conta()));
                            ls.lista();
                            
                            out.print("<td><a href='altera_Fatura.jsp?Id_conta="+lista.get(i).getId_conta()+
                                       "&valor_conta="+lista.get(i).getValor_conta()+"&per_capita="+lista.get(i).getPer_capita()+
                                       "&nome_cliente="+lista.get(i).getNome_cliente()+"&mes="+lista.get(i).getMes()+"&vencimento="+lista.get(i).getVencimento()+"'>Alterar</a></td>");
                            out.print("</tr>");                                  
                            
                        }
                        

                    %> 
                    <tr>
                        <th>Logradouro<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                        <th>Número<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                        <th>Bairro<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                        <th>Cidade<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                        <th>Estado<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>   
                        <th>Cpf_cliente<a href="javascript:void(0)" title="Sort" class="dataSorting"></a></th>
                    </tr>
                    
                    
                    <%
                        endereco endr = new endereco();
                        EnderecoDAO endrDAO = new EnderecoDAO();
                        
                        ArrayList<endereco> listae = endrDAO.listarTodos(Sessao.getInstance().getUsuario());
                        
                        for(int i = 0 ; i < listae.size(); i++){
                            
                            out.print("<tr>");
                            out.print("<td>"+listae.get(i).getLogradouro()+"</td>");
                            out.print("<td>"+listae.get(i).getNumero()+"</td>");
                            out.print("<td>"+listae.get(i).getBairro()+"</td>");
                            out.print("<td>"+listae.get(i).getCidade()+"</td>");
                            out.print("<td>"+listae.get(i).getEstado()+"</td>");
                            out.print("<td>"+listae.get(i).getCpf_cliente()+"</td>");
                            
                            out.print("<td><a href='../controller/excluiEndereco.jsp?Id_endereco="+listae.get(i).getId_endereco()+"'>Cancelar </a></td>");
                            out.print("<td><a href='altera_Endereco.jsp?Id_endereco="+listae.get(i).getId_endereco()+"&logradouro="+listae.get(i).getLogradouro()
                                   + "&numero="+listae.get(i).getNumero()+"&bairro="+listae.get(i).getBairro()+"&cidade="+listae.get(i).getCidade()+"&estado="+
                                   listae.get(i).getEstado()+"&cpf_cliente="+listae.get(i).getCpf_cliente()+"'>Alterar</a></td>");
                            out.print("</tr>");
                        }
                        
                     %>   
                </table>
            </div>       
                    <a href="painel_fatura.jsp">Voltar</a>
        </div>
           
    </body>
</html>
