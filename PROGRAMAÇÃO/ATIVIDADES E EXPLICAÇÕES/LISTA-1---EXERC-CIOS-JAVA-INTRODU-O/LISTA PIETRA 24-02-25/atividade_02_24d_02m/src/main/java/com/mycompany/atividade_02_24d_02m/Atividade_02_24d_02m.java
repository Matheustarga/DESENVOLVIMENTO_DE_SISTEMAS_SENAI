/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_02_24d_02m;

/**
 *Solicite ao usuário um número N e calcule a soma de todos os números ímpares entre
1 e N usando um laço de repetição
 * @author m.targa
 */
import java.util.Scanner;
public class Atividade_02_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Informe o número que deseja verificar os antecessores: ");
            int numero = leitor.nextInt();
            int digitado = numero;
            int i;
            
        for (i = 0; numero >= 1 ; --numero){
            if((numero % 2) != 0){
                i = i + numero;
            }
        }
        System.out.println("A soma dos números ímpares entre 1 e "+digitado+" = "+ i);
            
    }
}
