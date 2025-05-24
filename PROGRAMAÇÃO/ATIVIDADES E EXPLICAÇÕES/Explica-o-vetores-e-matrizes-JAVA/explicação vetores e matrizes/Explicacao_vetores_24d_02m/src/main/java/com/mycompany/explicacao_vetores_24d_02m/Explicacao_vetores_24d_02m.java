/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.explicacao_vetores_24d_02m;

/**
 *
 * @author m.targa
 */
public class Explicacao_vetores_24d_02m {

    public static void main(String[] args) {
        
        int [] numeros = new int[5];
        
        numeros[0] = 10;
        numeros[1] = 20;
        numeros[2] = 30;
        numeros[3] = 40;
        numeros[4] = 50;
        
        int [] outrosNumeros= {15,25,35,45,55};
        
        for (int i = 0; i<outrosNumeros.length;i++){
            System.out.println("Posição no vetor "+i+" Valor = "+ numeros[i]);
        }
        
        
        
        int [] vetor ={10,15,20,25,30,35,40,45,50};
        
        int soma = 0;
        
        for (int i = 0; i <vetor.length;i++){
            soma += vetor[i];
            System.out.println(soma);
        }
        System.out.println(soma);
        
    }
}
