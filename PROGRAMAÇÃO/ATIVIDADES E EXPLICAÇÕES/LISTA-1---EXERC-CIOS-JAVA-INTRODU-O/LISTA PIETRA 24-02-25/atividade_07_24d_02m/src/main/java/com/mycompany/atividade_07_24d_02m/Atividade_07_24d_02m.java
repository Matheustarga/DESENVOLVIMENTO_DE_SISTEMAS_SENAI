/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_07_24d_02m;

/**
 *7) Faça um programa que receba a idade de pessoas, até que o valor -1 seja informado.
O programa deve calcular e mostrar a quantidade de pessoas em cada faixa etária e a
maior idade.
Faixa etária Idade
1 Até 15 anos
2 De 16 anos a 40 anos
3 De 41 anos a 60 anos
4 Acima de 60 anos

 * @author m.targa
 */
import java.util.Scanner;
public class Atividade_07_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        
        int x = 1;int primeira = 0;int segunda = 0; int terceira = 0; int quarta = 0;
                        
        while(x == 1){
            System.out.println("Informe a idade para verificar sua faixa etária: ");
                int idade = leitor.nextInt();
            if (idade <= 15 && idade > 1){
                ++primeira;
            }
            else if(idade <= 40 && idade >= 16){
                ++segunda;
            }
            else if(idade >= 41 && idade <= 60){
                ++terceira;
            }
            else if(idade > 60){
                ++quarta;
            }
            System.out.println("Para sair digite (-1) ou 1 para continuar: ");
                int sair = leitor.nextInt();
            if (sair == -1){
                x = 0;
            }
        }
        System.out.println("TOTAL DE PESSOAS PRO FAIXA ETÁRIA:\nPrimeira = "+primeira+"\nsegunda = "+segunda+"\nterceira = "+terceira+"\nquarta = "+quarta);
    }
}
