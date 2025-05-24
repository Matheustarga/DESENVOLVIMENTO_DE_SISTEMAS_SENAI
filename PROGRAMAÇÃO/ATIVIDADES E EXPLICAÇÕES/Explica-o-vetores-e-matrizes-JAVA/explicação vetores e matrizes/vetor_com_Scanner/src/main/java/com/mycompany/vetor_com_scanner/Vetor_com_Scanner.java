/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.vetor_com_scanner;

/**
 *
 * @author m.targa
 */

import java.util.Scanner;
public class Vetor_com_Scanner {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        
        int[] numerosVetor = new int[5];
        int soma = 0;
        
        for(int i = 0; i < numerosVetor.length; i++){
            System.out.println("digite um número para a posição "+i+" :");
                numerosVetor[i] = leitor.nextInt();
                soma += numerosVetor[i];
        }
        System.out.println("\nNumeros informados: ");
        
        for (int i = 0;i < numerosVetor.length;i++){
            System.out.print(numerosVetor[i]+" ");
        }
        
        System.out.println("\nSoma total dos números: "+soma);
        
        leitor.close();
        
    }
}
