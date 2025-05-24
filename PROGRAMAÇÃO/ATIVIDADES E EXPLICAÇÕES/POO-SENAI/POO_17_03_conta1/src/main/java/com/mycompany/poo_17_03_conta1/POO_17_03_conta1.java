/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.poo_17_03_conta1;

/**
 *
 * @author m.targa
 */
import java.util.Scanner;

class ContaBancaria{
    String nomeCliente;
    String cpf;
    double saldo;
    
    public ContaBancaria(String nomeCliente,String cpf, double saldo){
        this.nomeCliente = nomeCliente;
        this.cpf = cpf;
        this.saldo = saldo;
        
    }
    
    public void depositar(double valor){
        if (valor > 0){
            saldo = saldo + valor;
            System.out.println("Depósito de R$"+valor+" realizado com sucesso.");
        }
        else{
            System.out.println("Valor de depósito inválido.");
        }
        
    }
    
    public void sacar(double valor){
        if(valor > 0 && valor <= saldo){
            saldo -= valor;
            System.out.println("Saque de R$"+valor+" realizado com Sucesso!");
        }
        else{
            System.out.println("Saque não realizado por conta de saldo insuficiente.");
        }
        
    }
    
    void ExibirSaldo(){
        System.out.println("Saldo atual: R$"+saldo);
        
    }

}

public class POO_17_03_conta1 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Informe seu nome: ");
            String nome = sc.nextLine();
        System.out.println("Informe seu CPF: ");
            String cpf = sc.nextLine();
        System.out.println("Informe seu saldo");
            double saldo = sc.nextDouble();
                    
        
        ContaBancaria conta = new ContaBancaria(nome,cpf,saldo);
        
         System.out.println("Informe o valor que deseja depositar: ");
            double valor = sc.nextDouble();
                conta.depositar(valor);  
            
         System.out.println("Informe quanto deseja sacar: R$");
            double valor1 = sc.nextDouble();
                conta.sacar(valor1);
                
        conta.ExibirSaldo();
        
        
    }
}
