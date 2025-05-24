/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_04_24d_02m;

/**
 *4) Leia o nome e a idade de 20 pessoas e exiba as seguintes informações:
• A soma das idades.
• A média das idades.
• A quantas pessoas são maiores de idade.
• O nome da pessoa mais nov
 * @author m.targa
 */
import java.util.Scanner;
public class Atividade_04_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        
        String nome_menor = "a";
        int contador_rodadas = 20;
        int divisor = 20;
        int soma_idades = 0; double media_idades;
        int maior_idade = 0;
        int adultos = 0;
        
        while(contador_rodadas != 0){
            System.out.println("Informe seu nome: ");
                String nome = leitor.next();
                
            System.out.println("Informe sua idade: ");
                int idade = leitor.nextInt();
                
            if (maior_idade == 0){
                maior_idade = idade;
            }
            else if(maior_idade > idade){
                maior_idade = idade;
                nome_menor = nome;
                
            }
            if (idade >= 18){
                ++adultos; 
            }
            soma_idades = soma_idades + idade;
            --contador_rodadas;            
        }
        media_idades = soma_idades / divisor;
        
        System.out.println("Soma das idades = "+soma_idades);
        System.out.println("media das idades = "+media_idades);
        System.out.println("Pessoas adultas = "+adultos);
        System.out.println("noma da pessoa mais nova = "+nome_menor);
        
    }
}
