/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.poo_atividade_02_17d_03m;

/**
 *
 * @author m.targa
 */
import java.util.Scanner;

class Livro{
    String titulo;
    String autor;
    int anoPublicacao;
    
    public Livro(String titulo, String autor,int anoPublicacao){
        this.titulo = titulo;
        this.autor = autor;
        this.anoPublicacao = anoPublicacao;
    }
    void ExibirInformacoes(String titulo, String autor,int anoPublicacao){
        System.out.println("Título: "+titulo+"\nAutor: "+autor+"\nAno de publicacao: "+anoPublicacao);
    }
    
    
}



public class POO_ATIVIDADE_02_17D_03M {

    public static void main(String[] args) {
        Scanner L = new Scanner(System.in);
        
        
        System.out.println("Informe o titulo do Livro: ");
            String nome = L.nextLine();
        System.out.println("Informe o nome do autor: ");
            String autor1 = L.nextLine();
        System.out.println("Informe o ano de publicação: ");
            int year = L.nextInt();
        
        Livro auto_ajuda = new Livro(nome,autor1,year);
        
            auto_ajuda.ExibirInformacoes(nome, autor1, year);
        
        
    }
}
