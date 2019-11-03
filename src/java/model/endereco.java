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
public class endereco {
    
    
    private String Id_endereco;

    private String logradouro;
 
    private String numero;
 
    private String bairro;

    private String cidade;
    
    private String estado;
   
    private String cpf_cliente;
    
    
    public void setLogradouro(String street){
        this.logradouro = street;
    }
   
    public void setNumero(String number) {
        this.numero = number;
    }
    
    public void setBairro(String neighborhood){
        this.bairro = neighborhood;
    }
    
    public void setCidade(String city){
        this.cidade = city;
    }
    
    public void setEstado(String state){
        this.estado = state;
    }

    public void setCpf_cliente(String cpf_cliente) {
        this.cpf_cliente = cpf_cliente;
        
    }
    
    public void setId_endereco(String Id_endereco){
        this.Id_endereco = Id_endereco;
    }
    
    public String getLogradouro(){
        return this.logradouro;
    }
    
    public String getNumero() {
        return this.numero;
    }
    
    public String getBairro(){
        return this.bairro;
    }
    
    public String getCidade(){
        return this.cidade;
    }
    
    public String getEstado(){
        return this.estado;
    }

    public String getCpf_cliente() {
        return this.cpf_cliente;
    }
 
    public String getId_endereco(){
        return this.Id_endereco;
    }
    
}
