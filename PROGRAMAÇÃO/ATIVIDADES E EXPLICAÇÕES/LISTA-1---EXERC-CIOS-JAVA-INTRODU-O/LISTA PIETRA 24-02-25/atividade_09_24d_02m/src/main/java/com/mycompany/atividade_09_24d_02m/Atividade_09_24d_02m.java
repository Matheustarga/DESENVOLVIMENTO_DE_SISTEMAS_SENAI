/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_09_24d_02m;

/**
 *9) Elabore um algoritmo que calcule o que deve ser pago por um produto, considerando
o preço normal de etiqueta e a escolha da condição de pagamento. Utilize os códigos da
tabela a seguir para ler qual condição de pagamento escolhida e efetuar o cálculo
adequado.
Código - Condição de pagamento
1 - À vista em dinheiro ou cheque, recebe 10% de desconto;
2 - À vista no cartão de crédito, recebe 15% de desconto;
3 - Em duas vezes, preço normal de etiqueta sem juros;
4 - Em duas vezes, preço normal de etiqueta mais juros de 10%.
 * @author m.targa
 */
import java.util.Scanner;
public class Atividade_09_24d_02m {

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        double calculo_escolha= 0 ;double valor_parcela ;
        
        System.out.println("Informe o valor da etiqueta do produto: R$ ");
            double valor_etiqueta = leitor.nextDouble();
            
        System.out.println("Informe a forma de pagamento que deseja:\n1 - Avista em dinheiro ou cheque, recebe 10% de desconto\n2 - A vista no cartao de credito, recebe 15% de desconto\n3 - Em duas vezes, preco normal de etiqueta sem juros\n4 - Em duas vezes, preco normal de etiqueta mais juros de 10%.");    
            int escolha = leitor.nextInt();
            
        if(escolha == 1){
            calculo_escolha = valor_etiqueta *0.90;
        }
        else if (escolha == 2){
            calculo_escolha = valor_etiqueta *0.85;
        }
        else if (escolha == 3){
            calculo_escolha = valor_etiqueta;
        }
        else if (escolha == 4){
            calculo_escolha = valor_etiqueta *1.1;
            valor_parcela = calculo_escolha / 2;
                if(escolha == 4){
                    System.out.println("O valor total = R$ - "+calculo_escolha+" Valor da parcela = R$ - "+valor_parcela);
        }
         
        }
        if(escolha != 4){
        System.out.println("O valor total = R$ - "+calculo_escolha);
        }
    }
}
