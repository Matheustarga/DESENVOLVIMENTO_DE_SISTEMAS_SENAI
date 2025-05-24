/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_05_24d_02m;

/**
 *5) Faça um algoritmo que leia 20 números e, ao final, escreva quantos estão entre 0 e
100, quantos estão entre 101 e 200 e quantos são maiores de 200.
 * @author m.targa
 */
import java.util.Scanner;
public class Atividade_05_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        
        int ate_100 = 0;int ate_200 = 0;int maior_200 = 0;
        
        for(int rodadas = 20 ; rodadas >=0 ; --rodadas){
            System.out.println("Digite um número para verificar: ");
                int numero = leitor.nextInt();
            
            if (numero <= 100 && numero >= 0){
                ++ate_100;
            }
            else if (numero >= 101 && numero <= 200){
                ++ate_200; 
            }
            else if( numero > 200){
                ++maior_200; 
            }
                
        }
        System.out.println("Número digitados que estão entre 0 e 100: " +ate_100+"\nNúmero digitados que estão entre 101 e 200: "+ate_200+"\nNúmero digitados que são maiores que 200 : "+maior_200);
        leitor.close();
        
    }
}
