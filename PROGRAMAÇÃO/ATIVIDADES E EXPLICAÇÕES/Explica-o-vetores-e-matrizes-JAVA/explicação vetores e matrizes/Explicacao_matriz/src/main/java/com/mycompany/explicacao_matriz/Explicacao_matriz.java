/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.explicacao_matriz;

/**
 *
 * @author m.targa
 */
public class Explicacao_matriz {

    public static void main(String[] args) {
        int [][] matrizNumeros = new int [3][3];
        
        matrizNumeros[0][0] = 1;
        matrizNumeros[0][1] = 2;
        matrizNumeros[0][2] = 3;
        matrizNumeros[1][0] = 4;
        matrizNumeros[1][1] = 5;
        matrizNumeros[1][2] = 6;
        matrizNumeros[2][0] = 7;
        matrizNumeros[2][1] = 8;
        matrizNumeros[2][2] = 9;
        
        int soma1 =0;
        /*Utilizamos o for(para) para percorremos a matriz, a matriz sempre ira percorrer a linha primeiro depois a coluna, dado isso, utilizamos duas estruturas de repetição, a primeira
        para determinar a linha e a segunda para determinar a coluna*/
        for(int linha = 0;linha < 3;linha++){
            for(int coluna = 0;coluna < 3;coluna++){
                System.out.print(matrizNumeros[linha][coluna]+" ");
                soma1 += matrizNumeros[linha][coluna];
            }
            System.out.println();
        }
        System.out.println("A soma dos elementos da primeira matriz é = "+soma1);
        
        /*-------------------------Segunda forma de criar uma matriz---------------------------------------*/
        int soma2 = 0;       
        
        
        int[][] outraMatriz = {
            {11,12,13},
            {14,15,16},
            {17,18,19}
        };
        
        for(int linha = 0;linha < 3;linha++){
            for(int coluna = 0;coluna < 3;coluna++){
                System.out.print(outraMatriz[linha][coluna]+" ");
                soma2 += outraMatriz[linha][coluna];
            }  
            System.out.println();
        
        }
        System.out.println("A soma dos elementos da segunda matriz é = "+soma2);
    }
}
