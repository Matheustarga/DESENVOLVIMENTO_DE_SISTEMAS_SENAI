/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_15_24d_02m;

/**
 *15) Escreva um programa que leia dois números e exiba mensagem informando o valor
do maior número e o valor do menor número. Se os dois números forem iguais, o
programa deve exibir mensagem informando este fato.

 * @author Matheus
 */
import java.util.Scanner;
public class Atividade_15_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        double maior = 0; double menor = 0;
        
        int controle = 1;
        
        System.out.println("Informe o valor do primeiro numero: ");
            double primeiro = leitor.nextDouble();
        System.out.println("Informe o valor do segundo numero: ");
            double segundo = leitor.nextDouble();

            if(primeiro > segundo){
                maior = primeiro;
                menor = segundo;
            }
            else if (segundo > primeiro){
                maior = segundo;
                menor = primeiro;            
            }
            else if( primeiro == segundo){
                controle = 2;
            }

        if (controle == 1){
           System.out.println("O maior numero = "+maior+" e o menor numero = "+menor); 
        }
        else if(controle == 2){
            System.out.println("os numeros "+primeiro+" e "+segundo+" sao iguais");
        }
        leitor.close();
        
    }
}
