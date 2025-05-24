/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_13_24d_02m;

/**
 * Escreva um programa que leia um número inteiro (variável CODIGO). Verificar se o
código é igual a 1, igual a 2 ou igual a 3. Caso não seja, apresentar a mensagem “Código
inválido”. Ao ser verificado o código e constatado que é um valor válido, o programa deve
verificar cada código em separado para determinar seu valor por extenso, ou seja,
apresentar a mensagem “um”, “dois” ou “três”
 * @author Matheus
 */
import java.util.Scanner;
public class Atividade_13_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        
        String extenso = "";
        
        System.out.println("Digite o codigo: ");
            int codigo = leitor.nextInt();
            
        if(codigo == 1){
            extenso = "UM";
        }
        else if(codigo == 2){
            extenso = "DOIS";
        }
        else if(codigo == 3){
            extenso = "TRES";
        }
        else {
            extenso = "CODIGO INVALIDO!!";
        }
        System.out.println(extenso);
        
        
        
        
        
    }
}
