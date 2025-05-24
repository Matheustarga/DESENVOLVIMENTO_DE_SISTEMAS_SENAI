/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.poo_atividade_01_17d_03m;

/**
 *
 * @author m.targa
 */
import java.util.Scanner;

class Aluno{
    String nome;
    double nota1;
    double nota2;
    
    public Aluno(String nome,double nota1,double nota2){
        this.nome = nome;
        this.nota1 = nota1;
        this.nota2 = nota2;
    }
    public void calcularMedia(String nome,double nota1,double nota2){
        double media = (nota1 + nota2)/2;
        System.out.println("A média do  "+ nome+" foi: "+media);
    }
    
    
}



public class POO_ATIVIDADE_01_17D_03M {

    public static void main(String[] args) {
        Scanner L = new Scanner(System.in);

         
        System.out.println("Informe o nome do aulno: ");
            String nome = L.nextLine();
        System.out.println("Informe a Primeira nota: ");
            double primeira_nota = L.nextDouble();
        System.out.println("Informe a Segunda nota: ");
            double segunda_nota = L.nextDouble();
            
        Aluno cadastro = new Aluno(nome,primeira_nota,segunda_nota);        
        
        cadastro.calcularMedia(nome,primeira_nota,segunda_nota);
        
        
        
        
    }
}
