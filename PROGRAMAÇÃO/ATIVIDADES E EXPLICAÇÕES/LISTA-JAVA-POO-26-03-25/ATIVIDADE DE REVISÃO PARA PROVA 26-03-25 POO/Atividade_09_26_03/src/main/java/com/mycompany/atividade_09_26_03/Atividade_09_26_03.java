/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade_09_26_03;

/**
 *9) Crie a classe Livro com os atributos:
• titulo (String)
• autor (String)
• emprestado (boolean, inicia como false)
Crie os métodos:
• emprestar() → Define emprestado como true.
• devolver() → Define emprestado como false.
• No main(), crie um livro, faça um empréstimo e depois devolva.
 * @author Matheus
 */
import java.util.Scanner;

class Livros{
    String titulo;
    String autor;
    boolean emprestado = false;
        
        public Livros(String titulo,String autor,boolean emprestado){
            this.autor = autor;
            this.titulo = titulo;
            this.emprestado = emprestado;
        }
        
        public void emprestar(){
            emprestado = true;
        }
        public void devolver(){
            emprestado = false;
        }
        public void exibir(String titulo,String autor){
            String status = "";
            if(emprestado == true){
                status = "EMPRESTADO";              
            }
            if(emprestado == false){
                status = "DISPONIVEL"; 
            }
            System.out.println(titulo+" do autor "+autor+" esta "+status);
        }
    
    
}

public class Atividade_09_26_03 {

    public static void main(String[] args) {
        Scanner LT = new Scanner(System.in);
        
        System.out.println("digite o nome do autor:");
            String autor1 = LT.nextLine();
        System.out.println("digite o nome do livro:");
            String nome1 = LT.nextLine();
            
            
            Livros livro_1 = new Livros(nome1,autor1,false);
            
            livro_1.emprestar();
            livro_1.exibir(nome1, autor1);
            livro_1.devolver();
            livro_1.exibir(nome1, autor1);
    }
}
