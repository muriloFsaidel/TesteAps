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
public class ListaSimples {
    
    private NoSimples referenciaPrimeiroNo;
    private int size;
    
   public ListaSimples(){
        referenciaPrimeiroNo = null;
        size=0;
    }
    
    public boolean estaVazia(){
        return(referenciaPrimeiroNo==null);
    }
    
    public void inserirNoInicio(double resultado){
        NoSimples novoNo = new NoSimples(resultado);
        novoNo.setProx(referenciaPrimeiroNo);
        referenciaPrimeiroNo = novoNo;
        size++;
    }
    
    public void apagarPrimeiro(){
        NoSimples temp = referenciaPrimeiroNo;
        System.out.println("Apagand o nó"+referenciaPrimeiroNo.getResultado());
        referenciaPrimeiroNo =  referenciaPrimeiroNo.getProx();
        temp.setProx(null);
        size--;
    }
    
    public void lista(){
        
     NoSimples no = referenciaPrimeiroNo;
     while(no != null){
     no.mostrarNo();
     no= no.getProx();
     }
    
    }
    
    public double buscarNo(double resultado){
        
        NoSimples current = referenciaPrimeiroNo;
        
        while(current.getResultado() != resultado){
        
        if(current.getProx()==null)
            return 0;
        else
            current = current.getProx();       
        }
        
        return current.getResultado();
                    
    }
    
    public double deletarNo(double resultado){
        NoSimples current = referenciaPrimeiroNo;
        NoSimples previous = referenciaPrimeiroNo;
        
        while(current.getResultado()!= resultado){
            
            if(current.getProx()==null)
                return 0;//value not found
            
            else
            {
            previous = current;
            current = current.getProx();
            
            }
        }
        
        if(current == referenciaPrimeiroNo)
            referenciaPrimeiroNo = referenciaPrimeiroNo.getProx();
        else{
            previous.setProx(current.getProx());
            current.setProx(null);
        }
        size--;
        return current.getResultado();
    }
}
