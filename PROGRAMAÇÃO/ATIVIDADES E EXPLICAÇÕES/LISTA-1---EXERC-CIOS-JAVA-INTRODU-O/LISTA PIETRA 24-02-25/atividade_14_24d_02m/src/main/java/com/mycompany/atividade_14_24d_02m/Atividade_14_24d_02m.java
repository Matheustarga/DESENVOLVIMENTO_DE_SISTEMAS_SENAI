/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_14_24d_02m;

/**
 *Escreva um programa que leia três valores para os lados de um triângulo (variáveis
A, B e C). Verificar se cada lado é menor que a soma dos outros dois lados. Se sim, saber
de A==B e se B==C, sendo verdade o triângulo é equilátero; se não, verificar de A==B ou
se A==C ou se B==C, sendo verdade o triângulo é isóscele; e caso contrário, o triângulo
será escaleno. Caso os lados fornecidos não caracterizarem um triângulo, avisar a
ocorrência.
 * @author Matheus
 */
import java.util.Scanner;
public class Atividade_14_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        String verificar = "";String tipo = "";
        
        System.out.println("Informe o tamanho do lado 1");        
            double A = leitor.nextDouble();
        System.out.println("Informe o tamanho do lado 2");
            double B = leitor.nextDouble();        
        System.out.println("Informe o tamanho do lado 3");        
            double C = leitor.nextDouble(); 
            
        if(A < (B+C)){
            verificar = "A < (B+C)";
        }
        else if(B < (A+C)){
            verificar = "B < (A+C)";
        }
        else if(C < (A+B)){
            verificar = "C < (A+B)";
        }
        if(A == (B+C)){
            verificar = "A = (B+C)";
        }
        else if(B == (A+C)){
            verificar = "B = (A+C)";
        }
        else if(C == (A+B)){
            verificar = "C = (A+B)";
        }        
        
        if(A==B && B==C){
            tipo = "equilátero";
        }
        else if ((A==B && A!=C)||(A==C && A!=B)||(B==C && B!=A)){
            tipo = "isosceles";
        }
        else{
            tipo = "escaleno"; 
        }
        
        System.out.println("Tipo do triangulo = "+tipo+" Menor lado = "+verificar);
    }
}
