/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_01_24d_02m;

/**
 *1) Solicite um número inteiro positivo ao usuário e calcule seu fatorial utilizando um laço
de repetição.
 * @author m.targa
 */
import java.util.Scanner;
public class Atividade_01_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Informe o numero para calcular o fatorial");
            int numero = leitor.nextInt();
            int fat;
            
        for (fat = 1 ;numero > 1 ;--numero ){
            fat = fat * numero;
            
        }
        
        System.out.println("resultado "+ fat);
        
        leitor.close();
            
        
    }
}
