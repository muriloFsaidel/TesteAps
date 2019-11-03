/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.contato;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.cliente;


public class ContatoDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<contato> lista = new ArrayList<>();
    
    public ContatoDAO(){
        conn = new ConnectionFactory().getConexao();
    }

    
     public void inserir (contato Contato){
        String sql = "INSERT INTO contato (email,facebook,twitter,cpf_cliente) VALUES (?, ?, ?, ?)";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1,Contato.getEmail());
            stmt.setString(2,Contato.getFacebook());
            stmt.setString(3,Contato.getTwitter());
            stmt.setString(4,Contato.getCpf_cliente());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro inserir Agendamento:" + erro);
        }
    }
    
    public void alterar (contato Contato){
        String sql = "UPDATE contato SET email = ?, facebook = ?, twitter = ?, cpf_cliente = ? WHERE Id_contato = ?";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, Contato.getEmail());
            stmt.setString(2, Contato.getFacebook());
            stmt.setString(3, Contato.getTwitter());
            stmt.setString(4, Contato.getCpf_cliente());
            stmt.setString(5, Contato.getId_contato());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro alterar agendamento:" + erro);
        }
    }
    
    public void excluir (int codigo){
        String sql = "DELETE FROM contato WHERE Id_contato = " + codigo;
        
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro excluir agendamento:" + erro);
        }
    }
    
    public ArrayList<contato> listarTodos(String cpf){
        
        cliente cli = new cliente();
        String sql = "SELECT * FROM contato WHERE cpf_cliente = '" + cpf + "';";
        
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()){
                contato Contato = new contato();
                Contato.setId_contato(rs.getString("Id_contato"));
                Contato.setEmail(rs.getString("email"));
                Contato.setFacebook(rs.getString("facebook"));
                Contato.setTwitter(rs.getString("twitter"));
                Contato.setCpf_cliente(rs.getString("cpf_cliente"));
                lista.add(Contato);
            }
            
        }catch(Exception erro){
            throw new RuntimeException("listar todos:" + erro);
        }
        return lista;
    }
}
