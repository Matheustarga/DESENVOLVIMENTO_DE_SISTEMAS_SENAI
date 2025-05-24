/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_11_24d_02m;

/**
 * O IMC – Indice de Massa Corporal é um critério da Organização Mundial de Saúde 
para dar uma indicação sobre a condição de peso de uma pessoa adulta. A fórmula é 
IMC = peso / (altura )2. Elabore um algoritmo que leia o peso e a altura de um adulto e 
mostre sua condição de acordo com a tabela abaixo. 
IMC Condição
Abaixo de 18,5 Abaixo do peso
Entre 18,5 e 25 Peso normal
Entre 25 e 30 Acima do peso
Acima de 30 Obeso

 * @author m.targa
 */
import java.util.Scanner;

public class Atividade_11_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
            String resultado = "";

            System.out.println("Informe sua altura em metros: ");
                double altura = leitor.nextDouble();
            System.out.println("Informe seu peso em KG: ");
                double peso = leitor.nextDouble();

            double calculo  = peso/(altura*2);

                if(calculo < 18.5){
                    resultado = "Abaixo do peso";
                }
                else if (calculo >= 18.5 && calculo < 25){
                    resultado = "Peso normal";
                }
                else if (calculo >= 25 && calculo < 30 ){
                    resultado = "Acima do peso";
                }
                else if (calculo > 30){
                    resultado = "Obeso";
                }

            System.out.println("A condição do seu IMC = " +resultado );
        leitor.close();
        
        
    }
}
