/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.funcionario;

/**
 *
 * @author m.targa
 */

import java.util.Scanner;

public class Funcionario {

    public static void main(String[] args) {
        Scanner lt = new Scanner(System.in);
        int quantidade = 0;
        trabalhador[] peao = new trabalhador[10];
        
        boolean x = true;
        
        do{
        System.out.println("1 - Cadastrar funcionário\n2 - Listar funcionário\n3 - Alterar cargo\n4 - Aumentar salário\n5 - Desativar funcionário\n0 - Sair");
            int escolha_menu = lt.nextInt();
                if(escolha_menu == 1){
                        
                    System.out.println("Informe o nome do usuario para cadastrar: "); 
                        lt.nextLine();
                        String func = lt.nextLine();
                        
                           
                    System.out.println("Informe o Cargo: ");
                        String cargo = lt.nextLine();
                           
                    System.out.println("Informe o salario  em R$: ");
                        double dinheiro = lt.nextDouble();

                        if(quantidade < peao.length){
                            peao[quantidade] = new trabalhador(func,cargo,dinheiro,true);
                            quantidade++;
                            System.out.println("Sucesso!");
                        }else{
                            System.out.println("Não foi possivel realizar o cadastro, a lista de trabalhadores está cheia!");
                        }                                        
                }                
                if(escolha_menu == 2){
                    for(int c = 0; c < quantidade;c++ ){
                        System.out.println("Indice do funcionario:   "+ (c+1));
                        if(peao[c] != null){
                        peao[c].exibirDados();
                        }
                    }
                }
                if(escolha_menu == 3){
                    System.out.println("--Lista de funcionarios--");
                        
                        for(int r = 0; r < quantidade;r++){
                            System.out.println((r+1)+ " - "+peao[r].getNome());                        
                        } 
                    System.out.println("-------------------------------------");
                    
                    System.out.println("Informe o Indice do funcionario: ");
                        lt.nextLine();
                        int name = lt.nextInt();
                    System.out.println("Informe o nome do novo cargo");
                        lt.nextLine();
                        String cargo = lt.nextLine();
                        peao[name-1].setCargo(cargo);                   
                }
                if(escolha_menu == 4){
                    System.out.println("--Lista de funcionarios--");
                        lt.nextLine();
                        for(int r = 0; r < quantidade;r++){
                            System.out.println((r+1)+ " - "+peao[r].getNome());                        
                        }
                    System.out.println("-------------------------------------");
                        
                    System.out.println("Informe o indice do funcionario que deseja aumentar o salario:");
                       
                        int indice = lt.nextInt();
                    System.out.println("Informe o percentual do aumento que deseja conceder: ");
                        
                        double percentual = lt.nextDouble();
                        peao[indice-1].aumentarSalario(percentual);
                    
                }
                if(escolha_menu == 5){
                    System.out.println("--Lista de funcionarios--");
                        
                        for(int r = 0; r < quantidade;r++){
                            System.out.println((r+1)+ " - "+peao[r].getNome());                        
                        } 
                    System.out.println("-------------------------------------");
                        
                    System.out.println("Informe o indice do funcionario que deseja DESATIVAR:");
                        
                        int indice =  lt.nextInt();
                        peao[indice-1].setAtivo(false);                                                                   
                }
                if(escolha_menu == 0){
                    
                    System.out.println("Saindo do sistema de gerenciamento de funcionarios");
                    break;
                }
                
        }while(x);
        
        
    }
    
}
