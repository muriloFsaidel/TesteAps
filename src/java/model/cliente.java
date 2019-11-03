/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


/**
 *
 * @author muril
 */

public class cliente {
    

    private int Id_cliente;
    

    private String nome;
    

    private String cpf;
    
    private String senha;
    
    private String cliente_nivel;
    
    private String pergunta_senha;
    
    
    public void setId(int Id_cliente){
        this.Id_cliente = Id_cliente;
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public void setCpf(String cpf){
        this.cpf = cpf;
    }
    
    public void setSenha(String senha){
        this.senha = senha;
    }
    
    public void setCli_nivel(String cli_nivel){
        this.cliente_nivel = cli_nivel;        
    }
    
    public void setPergunta_senha(String pergunta_senha) {
        this.pergunta_senha = pergunta_senha;
    }
     
    
    public int getId_cliente(){
        return this.Id_cliente;
    }
    

    public String getnome(){
        return this.nome;
    }
    
    public String getcpf(){
        return this.cpf;
    }
    
    public String getSenha(){
        return this.senha;
    }
   
    public String getcli_nivel(){
        return this.cliente_nivel;
    }
    
     public String getPergunta_senha(){
        return this.pergunta_senha;
    }
}
