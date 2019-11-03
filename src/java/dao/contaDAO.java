/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.conta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.cliente;

public class contaDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<conta> lista = new ArrayList<>();
    
    public contaDAO(){
        conn = new ConnectionFactory().getConexao();
    }
    
     public void inserir (conta Conta){
        String sql = "INSERT INTO conta (valor_conta,per_capita,nome_cliente,mes,vencimento) VALUES (?, ?, ?, ?, ?)";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, Conta.getValor_conta());
            stmt.setString(2, Conta.getPer_capita());
            stmt.setString(3, Conta.getNome_cliente());
            stmt.setString(4, Conta.getMes());
            stmt.setString(5, Conta.getVencimento());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro inserir dados:" + erro);
        }
    }
     
     public void alterar_nome (conta Conta){
        String sql = "UPDATE conta SET valor_conta = ?, per_capita = ?, nome_cliente = ? , mes = ?, vencimento = ? WHERE Id_conta = ?";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, Conta.getValor_conta());
            stmt.setString(2, Conta.getPer_capita());
            stmt.setString(3, Conta.getNome_cliente());
            stmt.setString(4, Conta.getMes());
            stmt.setString(5, Conta.getVencimento());
            stmt.setString(6, Conta.getId_conta());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro alterar dados:" + erro);
        }
    }
     
      public ArrayList<conta> listarTodos(String nome_cliente){
        
        cliente cli = new cliente();
        String sql = "SELECT * FROM conta WHERE nome_cliente = '" + nome_cliente + "';";
        
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()){
                conta Conta = new conta();
                Conta.setId_conta(rs.getString("Id_conta"));
                Conta.setValor_conta(rs.getString("valor_conta"));
                Conta.setPer_capita(rs.getString("per_capita"));
                Conta.setNome_cliente(rs.getString("nome_cliente"));
                Conta.setMes(rs.getString("mes"));
                Conta.setVencimento(rs.getString("vencimento"));
                lista.add(Conta);
            }
            
        }catch(Exception erro){
            throw new RuntimeException("listar todos:" + erro);
        }
        return lista;
    }
}
