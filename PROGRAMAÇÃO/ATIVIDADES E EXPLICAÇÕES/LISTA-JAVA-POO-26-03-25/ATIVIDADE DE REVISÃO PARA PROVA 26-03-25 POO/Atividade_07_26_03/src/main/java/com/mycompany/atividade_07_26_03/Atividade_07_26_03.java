/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_07_26_03;

/**
 *Crie uma classe chamada Produto com os atributos:
• nome (String)
• preco (double)
Crie o método:
• aplicarDesconto(double percentual) → Reduz o preço do produto pelo
percentual indicado.
• Aplique um desconto de 15% e exiba o preço antes e depois do desconto.
 * @author Matheus
 */
import java.util.Scanner;

class Produto {
    String nome;
    double preco;
    
    public Produto(String nome,double preco){
    this.nome = nome;
    this.preco = preco;
}
    public void aplicarDesconto(String nome,double preco){
        
        double porcentagemDesconto = 0.15;
        
        double valorDesconto = preco - (preco * porcentagemDesconto);
        System.out.println("O produto : "+nome+"\npreço total: R$ "+preco+"\npreço com desconto: "+valorDesconto);
        
    }
    
}

public class Atividade_07_26_03 {

    public static void main(String[] args) {
        Scanner LT = new Scanner(System.in);
        
        System.out.println("Informe o nome do produto que deseja calcular o desconto: ");
            String nomeP = LT.nextLine();
        System.out.println("Informe o preço do produto: ");
            Double precoP = LT.nextDouble();
           
            LT.close();
        Produto Produto1 = new Produto(nomeP,precoP); 
        
        Produto1.aplicarDesconto(nomeP,precoP);
            
    }
}
