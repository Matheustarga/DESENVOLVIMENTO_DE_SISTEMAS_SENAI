/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_08_24d_02m;

/**
 *) Escrever um algoritmo que leia uma quantidade desconhecida de números e conte
quantos deles estão nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. A
entrada de dados deve terminar quando for lido um número negativo.

 * @author m.targa
 */
import java.util.Scanner;
public class Atividade_08_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        
        int x = 1;int p = 0;int s = 0;int t = 0; int q = 0;
        
        while(x == 1){
            System.out.println("Informe o numero que deseja verificar o intervalor ou digite um numero negativo para sair");
                int numero = leitor.nextInt();
            if(numero >= 0){
                if(numero >= 0 && numero <= 25){
                    ++p;
                }
                else if(numero >= 26 && numero <= 50){
                    ++s;
                }
                else if(numero >= 51 && numero <= 75){
                    ++t;
                }
                else if (numero >= 76 && numero <= 100){
                    ++q;
                }
                
            }
            else if (numero < 0){
                x = 0;
            }
        }
        System.out.println("1º intervalo [0-25]= "+p+"\n2º intervalo [26-50] = "+s+"\n3º intervalo [51-75]= "+t+"\n4º intervalo [76-100]= "+q);
    }
}
