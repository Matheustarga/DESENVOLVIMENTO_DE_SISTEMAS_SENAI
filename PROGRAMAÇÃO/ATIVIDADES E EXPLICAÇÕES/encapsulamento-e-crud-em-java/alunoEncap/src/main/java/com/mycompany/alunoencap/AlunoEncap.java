/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.alunoencap;

/**
 *
 * @author m.targa
 */
import java.util.Scanner;

public class AlunoEncap {
        private String nome;
    private double nota1;
    private double nota2;
    
    public String getNome(){
        return nome;
    }
    public void setNome(String nome){
        this.nome = nome;
    }
    public double getNota1(){
        return nota1;
    }
    public void setNota1(double nota1){
        this.nota1 = nota1;
    }
    public double getNota2(){
        return nota2;
    }
    public void setNota2(double nota2){
        this.nota2 = nota2;
    }   
    
    public double calcularMedia(){
        return (nota1+nota2)/2;
    }
    
    public boolean status(){
        return calcularMedia()>=7;
    }
    
    
    
    public static void main(String[] args) {
        Scanner lt = new Scanner(System.in);
        AlunoEncap aluno = new AlunoEncap();
        
        System.out.println("Informe seu nome: ");
            String nome = lt.nextLine();
            aluno.setNome(nome);
            
        System.out.println("Informe a primeira nota: ");
            double nota1 = lt.nextDouble();
            aluno.setNota1(nota1);
            
        System.out.println("Informe a segunda nota: ");
            double nota2 = lt.nextDouble(); 
            aluno.setNota2(nota2);
            
        System.out.println("\n---Boletim---");
        System.out.println("Aluno: "+aluno.getNome());
        System.out.println("1º nota: "+aluno.getNota1());
        System.out.println("2º nota: "+aluno.getNota2());
        System.out.println("Média: "+aluno.calcularMedia());
        
        if(aluno.status()){
            System.out.println("Situação: Aprovado!");
        }
        else{
            System.out.println("Situação: Reprovado!");
        }
            
        lt.close();
        
        
        
        
    }
}
