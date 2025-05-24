/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.poo_17_03_pessoa;

/**
 *
 * @author m.targa
 */
import java.util.Scanner;

class Pessoa{
    String nome;
    int idade;
    
     public Pessoa(String nome, int idade){
        this.nome = nome;
        this.idade = idade;
    }
     
    public void votar(int idade){
        if(idade > 18){
            System.out.println(nome+" Tem idade para votar.");
        }
        else{
            System.out.println(nome+" Não em idade suficiente para votar.");
        }
    }
    void informar(){
        System.out.println("Nome: "+nome);
        System.out.println("Idade: "+idade);
    }
   
}





public class POO_17_03_PESSOA {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite o nome: ");
            String nome = sc.nextLine();
        System.out.println("Digite a idade: ");
            int idade = sc.nextInt();
        
        
    }
}
