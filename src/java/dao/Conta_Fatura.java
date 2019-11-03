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
public class Conta_Fatura {
    
    
    private double reaisf;
    private int m3f;
    private String mensagem;
    
        public Conta_Fatura(){

        }

        public void setReaisf(double reaisf){
            this.reaisf = reaisf;
        }
        
        public double getReaisf(){
            return this.reaisf;
        }
                
        public double calcular(String m3a){
                     
        //this.m3f = Double.parseDouble(m3a);
        this.m3f = Integer.parseInt(m3a);
        
        if(this.m3f<=10){
        this.reaisf = 22.38;   
        }
        
        if((this.m3f>=11)&&(this.m3f<=20)){
        double a =(this.m3f-10) * 3.50;
        this.reaisf = 22.38 + a;
        }
        
        if((this.m3f>=21) && (this.m3f<=30)){
        double a =(this.m3f-20) * 8.75;
        double b =10*3.50;
        this.reaisf = 22.38 + a + b;
        }
        
        if((this.m3f>=31) && (this.m3f<=50)){
        double a =(this.m3f-30) * 8.75;
        double b = 10 * 8.75;
        double c = 10 * 3.50;
        this.reaisf = 22.38 + a + b + c;
        }
        
        if(this.m3f>50){
        double a =(this.m3f-50) * 8.41;
        double b = 10 * 8.75;
        double c = 10 * 8.75;
        double d = 10 * 3.50;
        this.reaisf = 22.38 + a + b + c + d;
        }
         
        this.reaisf*=2;  
                               
        return this.reaisf;
        }
        
        public String validacaoConsumo(String m3a){
            
            this.m3f = Integer.parseInt(m3a);
            
             if(m3f>11) {
                 this.mensagem = this.m3f+", Consumo elevado de Agua, gaste menos na proxima conta";
                } 
                 else{
                  this.mensagem = this.m3f+" Parabens, o consumo esta sustentavel";
                    }
             
             return mensagem;
        }
        
        
        
}
