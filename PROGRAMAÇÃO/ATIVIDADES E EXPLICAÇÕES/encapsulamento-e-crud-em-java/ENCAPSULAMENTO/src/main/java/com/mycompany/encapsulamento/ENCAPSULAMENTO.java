/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.encapsulamento;

/**
 *
 * @author m.targa
 */

import java.util.Scanner;

public class ENCAPSULAMENTO {
    private String nome;
    private int idade;
    
    public String getNome(){ // Get do nome
        return nome;
    }
    public void setNome(String nome){ //Set do nome
        this.nome = nome;
    }
    public int getIdade(){//Get da idade
        return idade;
    }
    public void setIdade(int idade){//Ser da idade
        this.idade = idade;
    }
    public boolean maiorIdade(){
        return idade >=18;
    }

    public static void main(String[] args) {        
        Scanner leitor = new Scanner(System.in);
        ENCAPSULAMENTO pessoa = new ENCAPSULAMENTO();
        
        System.out.println("Digite seu nome: ");
            String nome = leitor.nextLine();
            pessoa.setNome(nome);
        
        System.out.println("Digite sua idade: ");
            int idade = leitor.nextInt();
            pessoa.setIdade(idade);
        
        System.out.println("--Dados da Pessoa--\nNome: "+pessoa.getNome()+"\nIdade: "+pessoa.getIdade());
        
        if(pessoa.maiorIdade()){
            System.out.println("Você é maior de idade!");
        }
        else{
            System.out.println("Você é menor de idade!");
        }
        leitor.close();
    }
}
