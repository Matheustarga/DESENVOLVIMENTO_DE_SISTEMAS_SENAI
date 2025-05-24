/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_08_06_03;

/**
 *8) Crie a classe Cinema com os atributos:
• capacidade (int)
• ingressosVendidos (int, inicia em 0)
Crie os métodos:
• venderIngresso(int quantidade) → Adiciona ao total, se houver vagas.
• verificarDisponibilidade() → Exibe quantos ingressos ainda podem ser
vendidos.
• No main(), crie um cinema com capacidade de 50 lugares, venda ingressos e
exiba a disponibilidade.
 * @author Matheus
 */
import java.util.Scanner;

class Cinema{
    int capacidade;
    int ingressosVendidos ;
    
    public Cinema(int capacidade,int ingressosVendidos){
        this.capacidade = capacidade;
        this.ingressosVendidos = ingressosVendidos;    
    }
    public void venderIngresso(int quantidade){
        if(capacidade >= ingressosVendidos){
             capacidade -= quantidade;
             ingressosVendidos += quantidade;
            System.out.println("Venda feita com SUCESSO!!!");
        }else{
            System.out.println("Não foi possivel concluir a venda!");
        }
    }
    public void verificarDisponibilidade(){
        if(capacidade >= ingressosVendidos){
            System.out.println("Existem "+(capacidade)+" vagas Disponiveis!");
        }else{
             System.out.println("VAGAS ESGOTADAS!!");
        }
    }
    
    
}

public class Atividade_08_06_03 {

    public static void main(String[] args) {
        Scanner LT = new Scanner(System.in);
        
        System.out.println("Informe a capacidade de total da sala de cinema: ");
            int capacidadeSala = LT.nextInt();
            
            boolean x = true;
            int vendaING = 0;
            
            Cinema cinemaVEND = new Cinema(capacidadeSala,vendaING);
            
        while(x == true){
            
            System.out.println("MENU\n1 - Vender ingresso\n2 - Consultar disponibilidade/n3 - Sair");
                int menu = LT.nextInt();
            if(menu == 1){
                System.out.println("Informe a quantidade de Ingressos que deseja vender: ");
                vendaING = LT.nextInt();
                
                cinemaVEND.venderIngresso(vendaING);
                
            }
            
            if(menu == 2){
                cinemaVEND.verificarDisponibilidade();
            }    
            if(menu == 3){
                x = false;
            }    
        }    
        
        
        
    }
}
