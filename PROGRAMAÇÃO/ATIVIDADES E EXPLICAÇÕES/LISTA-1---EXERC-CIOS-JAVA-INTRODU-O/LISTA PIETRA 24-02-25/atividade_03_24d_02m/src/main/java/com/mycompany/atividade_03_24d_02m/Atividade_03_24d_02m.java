/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_03_24d_02m;

/**
 *Peça ao usuário um número e determine se ele é um número perfeito (um número
cuja soma de seus divisores próprios é igual a ele mesmo
 * @author Matheus
 */

import java.util.Scanner;
public class Atividade_03_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        int contador = 1; int soma =0;
        
        System.out.println("Informe o numero para verificar se esta entre os numeros perfeitos: ");
            int numero = leitor.nextInt();
        
        for (contador = 1;contador <= (numero/2);++contador){
            if(numero % contador == 0){
                soma = soma + contador;
            }
            
        }
        if(soma == numero){
            System.out.println("O numero "+numero+" pertence aos perfeitos!");
        }
        else{
          System.out.println("O numero "+numero+" NAO pertence aos perfeitos.");  
        }
        leitor.close();
        
        
    }
}
