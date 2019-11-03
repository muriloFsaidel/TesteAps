/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.endereco;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.cliente;

public class EnderecoDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<endereco> lista = new ArrayList<>();
    
    
    public EnderecoDAO(){
     conn = new ConnectionFactory().getConexao();
    }
    
     public void inserir (endereco Endereco){
        String sql = "INSERT INTO endereco (logradouro,numero,bairro,cidade,estado,cpf_cliente) VALUES (?, ?, ?, ?, ?, ?)";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, Endereco.getLogradouro());
            stmt.setString(2, Endereco.getNumero());
            stmt.setString(3, Endereco.getBairro());
            stmt.setString(4, Endereco.getCidade());
            stmt.setString(5, Endereco.getEstado());
            stmt.setString(6, Endereco.getCpf_cliente());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro inserir endereco:" + erro);
        }
    }
    
    public void alterar (endereco Endereco){
        String sql = "UPDATE endereco SET logradouro = ?, numero = ?, bairro = ?, cidade = ?, estado = ?, cpf_cliente = ? WHERE Id_endereco = ?";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, Endereco.getLogradouro());
            stmt.setString(2, Endereco.getNumero());
            stmt.setString(3, Endereco.getBairro());
            stmt.setString(4, Endereco.getCidade());
            stmt.setString(5, Endereco.getEstado());
            stmt.setString(6, Endereco.getCpf_cliente());
            stmt.setString(7, Endereco.getId_endereco());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro alterar endereco:" + erro);
        }
    }
    
    public void excluir (int codigo){
        String sql = "DELETE FROM endereco WHERE Id_endereco = " + codigo;
        
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro excluir endereco:" + erro);
        }
    }
    
    public ArrayList<endereco> listarTodos(String cpf){
        
        cliente cli = new cliente();
        String sql = "SELECT * FROM endereco WHERE cpf_cliente = '" + cpf + "';";
        
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()){
                endereco endr = new endereco();
                endr.setId_endereco(rs.getString("Id_endereco"));
                endr.setLogradouro(rs.getString("logradouro"));
                endr.setNumero(rs.getString("numero"));
                endr.setBairro(rs.getString("bairro"));
                endr.setCidade(rs.getString("cidade"));
                endr.setEstado(rs.getString("estado"));
                endr.setCpf_cliente(rs.getString("cpf_cliente"));
                lista.add(endr);
            }
            
        }catch(Exception erro){
            throw new RuntimeException("listar todos:" + erro);
        }
        return lista;
    }
}
