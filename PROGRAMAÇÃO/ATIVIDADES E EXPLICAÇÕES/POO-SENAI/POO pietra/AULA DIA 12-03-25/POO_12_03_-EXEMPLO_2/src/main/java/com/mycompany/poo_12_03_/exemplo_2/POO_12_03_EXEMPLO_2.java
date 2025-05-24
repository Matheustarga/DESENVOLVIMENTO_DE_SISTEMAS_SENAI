/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.poo_12_03_.exemplo_2;

/**
 *
 * @author m.targa
 */

class Animal{
    String som;
    String tipo;
    String raca;
    String cor;
    String especie;
    int idade;
    
    void exibir(){
        System.out.println("Especie: "+especie+" Tipo do animal: "+tipo+" Raça: "+raca+" Cor: "+cor+"");
    }
    
    
    void fazerSom(){
       System.out.println("O "+tipo+" "+som); 
    }
    
}

public class POO_12_03_EXEMPLO_2 {

    public static void main(String[] args) {
        Animal meupet = new Animal();
        
        meupet.especie = "Felino";
        meupet.tipo = "Gato";
        meupet.raca = "Siames";
        meupet.cor = "Branco e Marrom";
        meupet.som = "Mia";
        meupet.idade = 3;
        
        meupet.exibir();
        meupet.fazerSom();
        
    }
}
