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
public class conta {
    
    private String id_conta;
    
    private String valor_conta;
    
    private String per_capita;
    
    private String nome_cliente;
    
    private String mes;
    
    private String vencimento;
    
    public void setId_conta(String id_conta){
        this.id_conta = id_conta;
    }
    
     public void setValor_conta(String valor_conta){
        this.valor_conta = valor_conta;
    }
    
    public void setPer_capita(String per_capita){
        this.per_capita = per_capita;
        
    }
    
    public void setNome_cliente(String nome_cliente){
        this.nome_cliente =  nome_cliente;
    }
    
    public void setMes (String mes){
        this.mes = mes;
    }
    
     public void setVencimento(String vencimento){
        this.vencimento = vencimento;
    }
    
    public String getId_conta(){
        return  this.id_conta;
    }
    
     public String getValor_conta(){
        return  this.valor_conta;
    }
    
    public String getPer_capita(){
        return this.per_capita;
    }
    
    public String getNome_cliente(){
        return this.nome_cliente;
    }
    
    public String getMes(){
        return this.mes;
    }
    
     public String getVencimento(){
        return this.vencimento;
    }
    
}
