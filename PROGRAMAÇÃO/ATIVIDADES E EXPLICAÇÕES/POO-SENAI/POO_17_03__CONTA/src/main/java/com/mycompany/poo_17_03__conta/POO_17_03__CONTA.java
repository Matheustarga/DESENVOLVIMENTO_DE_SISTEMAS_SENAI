/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.poo_17_03__conta;

/**
 *
 * @author m.targa
 */
import java.util.Scanner;

class ContaBancaria{
    String nomeCliente;
    String cpf;
    double saldo;
    
    public ContaBancaria(String nomeCliente,String cpf,double saldo){
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


public class POO_17_03__CONTA {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
       
        
  
        System.out.println("Digite o nome do cliente: ");
            String nome = leitor.nextLine();
        System.out.println("Digite o CPF: ");
            String cpf = leitor.nextLine();
        System.out.println("Informe o Saldo inicial da conta do cliente: ");
            double saldo = leitor.nextInt();
        
        ContaBancaria conta = new ContaBancaria(nome,cpf,saldo);   
        
        

        
        int controller = 0;
        do{ 
            
            System.out.println("Informe a ação que deseja fazer:\n1 - DEPOSITAR\n2 - SACAR\n3 - EXIBIR SALDO\n 4 - SAIR");
                int menu = leitor.nextInt();
            if (menu == 1){
                System.out.println("Informe o valor do depósito");
                double deposito = leitor.nextDouble();
                
                conta.depositar(deposito);
            }
            
            
        } while(controller == 0);
    
        
        
    }
}
