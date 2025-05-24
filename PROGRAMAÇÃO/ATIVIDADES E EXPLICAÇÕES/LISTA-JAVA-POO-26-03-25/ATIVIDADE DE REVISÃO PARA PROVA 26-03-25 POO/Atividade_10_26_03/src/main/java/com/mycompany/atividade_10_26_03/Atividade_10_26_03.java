/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_10_26_03;

/**
 *Crie a classe ContaCorrente com os atributos:
• titular (String)
• saldo (double)
Crie os métodos:
• depositar(double valor) → Adiciona um valor ao saldo.
• sacar(double valor) → Reduz o saldo, se houver saldo suficiente.
• aplicarTaxaMensal() → Reduz o saldo em R$ 12,00.
• No main(), crie uma conta, faça operações e aplique a taxa.
 * @author Matheus
 */
import java.util.Scanner;

class ContaCorrente{
    String titular;
    double saldo;
    
    public ContaCorrente(String titular,double saldo){
        this.saldo = saldo;
        this.titular = titular;
    }
    public void depositar(double valor){
        saldo += valor;
        System.out.println("Apos a operaçao de deposito o saldo = R$ "+saldo);
    }
    public void sacar(double valor){
        if(saldo < valor){
            System.out.println("Saldo insulficiente!!!\nSaldo atual: R$ "+saldo);
            
        }
        else{
            saldo -= valor;
            System.out.println("Apos a operaçao de saque o saldo = R$ "+saldo);
        }
    }
    public void taxaMensal(){
        saldo = saldo - 12;
        System.out.println("Apos a cobrança da taxa anual o saldo = R$ "+saldo);
    }
    
}

public class Atividade_10_26_03 {

    public static void main(String[] args) {
        Scanner LT = new Scanner(System.in);
        
        System.out.println("Informe o nome do titular da conta: ");
            String nomeT = LT.nextLine();
        System.out.println("Informe o saldo inicial do cliente: ");
            double saldoT = LT.nextDouble();
        System.out.println("Informe o valor que deseja depositar: ");
            double depositoT = LT.nextDouble();
        System.out.println("Informe o valor que deseja sacar: ");
            double saqueT = LT.nextDouble();
        
        ContaCorrente novaConta = new ContaCorrente(nomeT,saldoT);
            System.out.println("Saldo atual = R$ "+novaConta.saldo);
            novaConta.depositar(depositoT);
            novaConta.sacar(saqueT);
            novaConta.taxaMensal();
            System.out.println("Saldo atual = R$ "+novaConta.saldo);
    }
}
