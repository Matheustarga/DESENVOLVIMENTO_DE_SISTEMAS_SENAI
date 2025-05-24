/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_06_24d_02m;

/**
 *) Escreva um algoritmo que leia uma sequência de números do usuário e realize a soma
desses números. Encerre a execução quando um número negativo for digitado.

 * @author m.targa
 */
import java.util.Scanner;
public class Atividade_06_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        
        int x = 1; int soma = 0;
        
        while(x == 1){
            System.out.println("Digite os números que deseja: \nDigite (-1) para sair");
                int numero = leitor.nextInt();
            if(numero > -1){
                soma =soma + numero;
            }
            else if (numero == -1){
                x = 0;
            }
        }
        System.out.println("A soma dos números digitados é: "+soma);
    }
}
