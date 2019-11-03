/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author muril
 */
public class NoSimples {
 
    private double resultado;
    private NoSimples prox;
    
  public  NoSimples(double resultado){
        this.resultado = resultado;
        prox=null;
    }
    
  public void mostrarNo(){
   System.out.println("O Valor da conta é: "+resultado+"\n");
  }
    public double getResultado(){
        return resultado;
    }
    
    public void setResultado(double resultado){
        this.resultado = resultado;
    }
    
    public NoSimples getProx(){
        return prox;
    }
    
    public void setProx(NoSimples prox){
        this.prox = prox;
    }
    
}
