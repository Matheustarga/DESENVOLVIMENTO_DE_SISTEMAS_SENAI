/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.poo_12_03;

/**
 *
 * @author m.targa
 */

class Pessoa{
    
    String nome;
    int idade;
    double altura;
    double peso;
    String curso;

    void apresentar(){
        System.out.println("Nome: "+nome+", Idade: "+idade+", ALtura: "+altura+", Peso: "+peso);
        
    }
    void mostrarCurso(){
        System.out.println(nome+" está matriculado no curso de "+curso);
    }
    
}


public class POO_12_03 {

    public static void main(String[] args) {
        Pessoa aluno = new Pessoa();
        
        aluno.nome = "Matheus";
        aluno.idade = 24;
        aluno.peso = 99;
        aluno.altura = 1.91;
        aluno.curso = "DDS";
        
        
        aluno.apresentar();
        aluno.mostrarCurso();
        
    }
}
