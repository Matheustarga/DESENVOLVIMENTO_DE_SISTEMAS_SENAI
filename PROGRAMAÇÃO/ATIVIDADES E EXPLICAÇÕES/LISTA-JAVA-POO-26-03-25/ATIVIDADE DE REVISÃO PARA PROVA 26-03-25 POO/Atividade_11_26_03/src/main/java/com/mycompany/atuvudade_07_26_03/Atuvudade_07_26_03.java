/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atuvudade_07_26_03;

/**
 *11) Crie a classe Voo com os atributos:
• numero (String)
• assentosDisponiveis (int)
Crie os métodos:
• reservarAssento() → Diminui assentosDisponiveis, se houver vagas.
• verificarDisponibilidade() → Retorna quantos assentos ainda estão
disponíveis.
• No main(), crie um voo com 10 assentos, faça algumas reservas e exiba a
disponibilidade final.

 * @author m.targa
 */
import java.util.Scanner;

class Voo{
    String numero;
    int assentosDisponiveis;
    
    public Voo(String numero,int assentosDisponiveis){
        this.numero = numero;
        this.assentosDisponiveis = assentosDisponiveis;        
    }
    public void reservarAssento(int quantidade){
        
        assentosDisponiveis -= quantidade;
        System.out.println("Reserva feita com SUCESSO!!");
    }
    public void VerificarDisponibilidade(){
        System.out.println("A quantidade de assentos disponiveis é: "+assentosDisponiveis);
    }
    
}






public class Atuvudade_07_26_03 {

    public static void main(String[] args) {
        Scanner LT = new Scanner(System.in);
        boolean x = true;
        
        System.out.println("Informe a quantidade de assentos do voo: ");
            int assentos = LT.nextInt();
            LT.nextLine();
        System.out.println("Informe o numero do voo: ");
            String numero_voo = LT.nextLine();
        
        Voo aviao_1 = new Voo(numero_voo,assentos);
        
        while(x){
            
            System.out.println("MENU\n 1 - Reservar Assento.\n 2 - Verificar Disponibilidade.\n 3 - Sair.");
                int controle = LT.nextInt();
                
                    if(controle == 1){
                        System.out.println("Informe a Quantidade de assentos que deseja reservar: ");
                            int reservados = LT.nextInt();
                            
                        aviao_1.reservarAssento(reservados);
                    }
                    else if(controle == 2){
                        aviao_1.VerificarDisponibilidade();
                    }
                    else if(controle == 3){
                        x = false;
                    }
                
                
        }
        
        
        
        
    }
}
