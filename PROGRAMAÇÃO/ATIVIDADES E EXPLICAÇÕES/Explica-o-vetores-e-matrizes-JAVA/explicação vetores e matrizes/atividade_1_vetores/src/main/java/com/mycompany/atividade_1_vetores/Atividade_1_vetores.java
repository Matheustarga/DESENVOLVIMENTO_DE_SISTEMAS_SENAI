/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_1_vetores;

/**
 *1) Crie um programa que:

Solicite ao usuário 10 números inteiros e os armazene em um vetor.
Determine e exiba qual é o maior e o menor número digitado.
 * @author m.targa
 */
import java.util.Scanner;
public class Atividade_1_vetores {

    public static void main(String[] args) {
        
        Scanner leitor = new Scanner(System.in);
        
        int [] numeros = new int[10];
        
        int maior = 0;
        
        for (int i = 0; i < 10;i++){
            System.out.println("Digite um número: ");
                numeros[i]= leitor.nextInt();
                
                if(maior <= numeros[i]){
                    maior = numeros[i];
                }
        }
        System.out.println("O maior número é: "+maior );
        
        leitor.close();
        
        
        
        
    }
}
