/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.funcionario;

/**
 *
 * @author m.targa
 */
public class trabalhador {
      private String nome ;
      private String cargo;
      private double salario;
      private boolean ativo;
      
      public trabalhador(String nome,String cargo,double salario,boolean ativo){
          this.nome = nome;
          this.cargo = cargo;
          this.salario = salario;
          this.ativo = ativo;
      }
      
      public String getNome(){
          return nome;
      }
      
      public void setNome(String nome){
          this.nome = nome;
      }
      public String getCargo(){
          return cargo;
      }
      
      public void setCargo(String cargo){
          this.cargo = cargo;
      }      

      public double getSalario(){
          return salario;
      }
      
      public void setSalario(double salario){
          this.salario = salario;
      }

      public boolean getAtivo(){
          return ativo;
      }
      
      public void setAtivo(boolean ativo){
          this.ativo = ativo;
      }
      
      public void exibirDados(){
          System.out.println("Nome do Funcionario: "+ this.nome );
          System.out.println("Cargo: "+ cargo);
          System.out.println("Salario R$: "+ salario);
          System.out.println("Status: "+(ativo ? "Ativo":"Inativo"));
          System.out.println("-------------------------------------\n");      
      }
      public void aumentarSalario (double percentual){
          double novoSalario = this.getSalario() + ((this.getSalario())*percentual/100) ;        
          this.setSalario(novoSalario);
      
      }
      
}
