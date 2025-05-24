/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_12_24d_02m;

/**
 *12) Escreva um programa que leia dois números e apresente a diferença do maior para
o menor
 * @author Matheus
 */
import java.util.Scanner;

public class Atividade_12_24d_02m {

    public static void main(String[] args) {
        
        double diferenca; double maior;double menor;
        
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Informe o primeiro numero: ");
            double primeiro = leitor.nextDouble();
        System.out.println("Informe o segundo numero: ");
            double segundo = leitor.nextDouble();
            
        if(primeiro >= segundo){
            maior = primeiro;
            menor = segundo;
        }
        else {
            maior = segundo;
            menor= primeiro;
            
        }
        diferenca = maior - menor;
        
        System.out.println("A diferenca entre o maior ("+maior+") e o menor ("+menor+") e igual a = "+diferenca);
    }
}
