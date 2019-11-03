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
public class Sessao {
    
    private static Sessao instance = null;
    private String usuario;
    private String nivel;
    private String nome; 
    
    public Sessao(){
        
    }
    
    public void setUsuario(String usuario){
        this.usuario = usuario;
    }
    
    public String getUsuario(){
        return this.usuario;
    }
    
    public void setNivel(String nivel){
        this.nivel = nivel;
    }
    
    public String getNivel(){
        return this.nivel;
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public String getNome(){
        return this.nome;
    }
    
    public static Sessao getInstance(){
        if(instance ==  null){
            instance = new Sessao();
        }
        return instance;
    }
}
