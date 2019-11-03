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
public class contato {
    
    
    private String Id_contato;
    
    private String email;
    
    private String facebook;
    
    private String twitter;
    
    private String cpf_cliente;  
    
    
    public void setId_contato(String Id_contato){
        this.Id_contato =  Id_contato;
    }    
            
    public void setEmail(String num1){
        this.email = num1;
    }
    
    public void setFacebook(String num2){
        this.facebook = num2;    
    }
    
    public void setTwitter(String num3){
        this.twitter = num3;
    }
    
    public void setCpf_cliente(String cpf_cliente){
        this.cpf_cliente = cpf_cliente;
    }
    
    public String getId_contato(){
        return this.Id_contato;
    }
    
    public String getEmail(){
        return this.email;
    }
    
    public String getFacebook(){
        return this.facebook;
    }
    
    public String getTwitter(){
        return this.twitter;
    }
    
    public String getCpf_cliente(){
        return this.cpf_cliente;
    }
}
