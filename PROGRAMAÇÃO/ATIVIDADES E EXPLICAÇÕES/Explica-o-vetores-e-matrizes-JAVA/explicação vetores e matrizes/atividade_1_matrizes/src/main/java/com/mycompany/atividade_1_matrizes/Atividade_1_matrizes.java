/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_1_matrizes;

/**
 *2) Crie um programa que:

Peça ao usuário para preencher uma matriz 3x3 com números inteiros.
Exiba a matriz formatada no console.
 * @author m.targa
 */
import java.util.Scanner;
public class Atividade_1_matrizes {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        
        int [][] numeros = new int [3][3];
        
        for(int linha = 0; linha < 3; linha++){
            for(int coluna = 0; coluna < 3;coluna++){
                System.out.println("Informe um numero: ");
                    numeros[linha][coluna] = leitor.nextInt();
            }                        
        }
        for(int linha = 0; linha < 3; linha++){
            for(int coluna = 0; coluna < 3;coluna++){
                System.out.print(numeros[linha][coluna]+" ");
                    
            } 
            System.out.println();
        }
        leitor.close();      
        
        
        
        
    }
}
