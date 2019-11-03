/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import model.cliente;
import model.Sessao;

public class ClienteDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    
    public ClienteDAO(){
    conn = new ConnectionFactory().getConexao();
    }
    
     public void inserir (cliente Cliente){
        String sql = "INSERT INTO cliente (nome,cpf,senha, cliente_nivel) VALUES (?, ?, ?, ?)";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1,Cliente.getnome());
            stmt.setString(2,Cliente.getcpf());
            stmt.setString(3,Cliente.getSenha());
            stmt.setString(4,Cliente.getcli_nivel());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro 2:" + erro);
        }
    }
    
    public void alterar_senha (cliente Cliente){
        String sql = "UPDATE cliente SET nome = ?, cpf = ?, senha = ?, cliente_nivel = ? WHERE cpf = ?";
        Sessao sessao = Sessao.getInstance();
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, Cliente.getnome());
            stmt.setString(2, Cliente.getcpf());
            stmt.setString(3, Cliente.getSenha());
            stmt.setString(4, Cliente.getcli_nivel());
            stmt.setString(5, sessao.getUsuario());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro 3:" + erro);
        }
    }
    
    public void alterar (cliente Cliente ){
        String sql = "UPDATE cliente SET nome = ?, cpf = ?, cliente_nivel = ? WHERE cpf = ?";
        Sessao sessao = Sessao.getInstance();
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, Cliente.getnome());
            stmt.setString(2, Cliente.getcpf());
            stmt.setString(3, Cliente.getcli_nivel());
            stmt.setString(4, sessao.getUsuario());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro 3:" + erro);
        }
    }
    
    public void excluir (String Cpf){
        String sql = "DELETE FROM cliente WHERE cpf = " + "'" + Cpf + "'" + ";";
        
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro 4:" + erro);
        }
    }
    
    public boolean verificarCliente(String cpf, String senha, String nivel){
        String sql = "SELECT nome, cpf FROM cliente WHERE cpf = " + "'" + cpf + "'" + "AND senha = " + "'" + senha + "'" + "AND cliente_nivel = " + "'" + nivel + "'" + ";";
        String nome = "";
        boolean result = false;
        try{
            
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            if(rs.next()){
                result = true;
                
                Sessao sessao = Sessao.getInstance();
                
                sessao.setNome(rs.getString("nome"));
                
                cliente cli = new cliente();
                cli.setCpf(cpf);
            }
            
        }catch (Exception erro){
            throw new RuntimeException("Erro 10:" + erro);
        }
        return result;
    }
    
}
