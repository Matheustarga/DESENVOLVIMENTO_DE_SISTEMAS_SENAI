/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_10_24d_02m;

/**
 *10) Escreva um algoritmo que leia o número de identificação, as 3 notas obtidas por um 
aluno nas 3 verificações e a média dos exercícios que fazem parte da avaliação, e 
calcule a média de aproveitamento, usando a fórmula: 
MA:= (nota1 + nota 2 * 2 + nota 3 * 3 + ME) /7
A atribuição dos conceitos obedece a tabela abaixo. O algoritmo deve escrever o número 
do aluno, suas notas, a média dos exercícios, a média de aproveitamento, o conceito 
correspondente e a mensagem 'Aprovado' se o conceito for A, B ou C, e 'Reprovado' se 
o conceito for D ou E. 
Média de aproveitamento Conceito
 * @author m.targa
 */
import java.util.Scanner;
public class Atividade_10_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        String conceito = "";
        String abc = "";
        
        
        System.out.println("Informe seu numero de identificação: ");
            double ident = leitor.nextInt();
            
        System.out.println("Informe a nota obtida na primeira avalicao: ");
            double nota1 = leitor.nextDouble();
            
        System.out.println("Informe a nota obtida na segunda avalicao: ");
            double nota2 = leitor.nextDouble();
            
        System.out.println("Informe a nota obtida na terceira avalicao: ");
            double nota3 = leitor.nextDouble();
            
        System.out.println("Informe a nota obtida nos exercicios avalicao: ");
            double exercicios = leitor.nextDouble();
            
        double MA = (nota1 + (nota2 * 2) + (nota3 * 3) + exercicios)/7; 
        
        if (MA >= 90){
            conceito =  "A";
        }
        else if(MA >= 75 && MA < 90){
            conceito =  "B";
        }
        else if (MA >= 60 && MA < 75){
            conceito =  "C";
        }
        else if (MA == 40 || MA < 60){
            conceito =  "D";
        }
        else if (MA < 40){
            conceito = "E";
        }
        
        if (conceito == "A" || conceito == "B" || conceito == "C"){
            abc = "APROVADO";
        }
        else if(conceito == "D" || conceito == "E"){
            abc = "REPROVADO";
        }
        
        System.out.println("O aluno da identidade "+ident+" status do aluno "+abc);
        
            
    }
}
