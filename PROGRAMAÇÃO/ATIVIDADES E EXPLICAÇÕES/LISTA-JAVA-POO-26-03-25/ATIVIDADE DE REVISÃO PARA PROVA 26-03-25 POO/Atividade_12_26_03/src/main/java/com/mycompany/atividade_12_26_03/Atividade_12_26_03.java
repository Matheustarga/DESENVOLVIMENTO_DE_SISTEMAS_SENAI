/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_12_26_03;

/**
 *12) Crie a classe Filme com os atributos:
• titulo (String)
• notaTotal (double, inicia em 0)
• quantidadeAvaliacoes (int, inicia em 0)
Crie os métodos:
• avaliar(double nota) → Soma a notaTotal e aumenta quantidadeAvaliacoes.
• calcularMedia() → Retorna a média das avaliações.
• No main(), crie um filme, adicione avaliações e exiba a média.

 * @author m.targa
 */
import java.util.Scanner;

class Filme{
    String titulo;
    double notaTotal;
    int quantidadeAvaliacoes;
    
        public Filme(String titulo,double notaTotal,int quantidadeAvaliacoes){
            this.titulo = titulo;
            this.notaTotal = notaTotal;
            this.quantidadeAvaliacoes = quantidadeAvaliacoes;
        }
        
        public void avaliar(double nota){
            notaTotal += nota;
            quantidadeAvaliacoes += 1;
        }
        public void calcularMedia(){
           double media = notaTotal /quantidadeAvaliacoes;
           System.out.println("O Total de avalições foi do filme "+titulo+" : "+quantidadeAvaliacoes+" e a média foi de : "+media);
        }
             
}


public class Atividade_12_26_03 {

    public static void main(String[] args) {
        Scanner LT = new Scanner(System.in);
        boolean x = true;        
        
        System.out.println("Informe o nome do filme que deseja avaliar: ");
            String nome = LT.nextLine();
            LT.nextLine();
            Filme anime = new Filme(nome,0,0);
            
        while(x){
            System.out.println("MENU\n 1 - Avaliar\n 2 - Verificar média\n 3 - Sair.");
                int controle = LT.nextInt();
                
                if(controle == 1){
                    System.out.println("Digite a nota da avalição do filme: "+nome);
                        double notaF = LT.nextDouble();
                        anime.avaliar(notaF);
                }
                if(controle == 2){
                    anime.calcularMedia();
                }
                if(controle == 3){                  
                    System.out.println("Finalizando programa.");
                     x = false;
                }
            
        }
        
        
        
    }
}
