/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package com.mycompany.teladecadastro;

/**
 *
 * @author m.targa
 */
import javax.swing.*;//Para usar o JFrame, JLabel,JTextField,JButton dentro do pacote
import java.awt.*;//Serve para usar nos layouts 
import java.awt.event.*;//Serve para capturar eventos feitos no botão

public class Cadastro extends javax.swing.JFrame {
    //Componentes da tela
    private JTextField campoNome, campoEmail;
    private JPasswordField campoSenha,campoConfirmarSenha;
    private JButton botaoConfirmar;
   
    
    //Construtor da Classe (Onde montamos toda a Interface)
    public Cadastro() {
        setTitle("Tela de Cadastro");//Titulo da janela
        setSize(400, 200);//Define o tamanho da janela()
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);//Fecha a aplicação ao clicar no X.
        setLayout(new GridLayout(5,2));//Layout com 5 linhas e 2 colunas.
     
        add(new JLabel("Nome:"));
        campoNome = new JTextField();
        add(campoNome);
        
        add(new JLabel("E-mail:"));
        campoEmail = new JTextField();
        add(campoEmail);
        
        add(new JLabel("Senha"));
        campoSenha = new JPasswordField();
        add(campoSenha); 
                
        add(new JLabel("Confirmação de Senha"));
        campoConfirmarSenha = new JPasswordField();
        add(campoConfirmarSenha); 
        
        
        add(new JLabel(""));
        
        botaoConfirmar = new JButton("Cadastrar");
        add(botaoConfirmar);
        
        //Centraliza a janela
        setLocationRelativeTo(null);
        //tornar visivel
        setVisible(true);
        
        //adicionar ação ao botão
        botaoConfirmar.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
               realizarCadastro();
            }
        }
        );       
    }
    // método que faz a verificação dos campos e mostra mensagem
    public void realizarCadastro(){
        String nome = campoNome.getText();
        String email = campoEmail.getText();   
        String senha = new String(campoSenha.getPassword());
        String confirmarSenha = new String(campoConfirmarSenha.getPassword());
        
        if(nome.isEmpty() || email.isEmpty() || senha.isEmpty() || confirmarSenha.isEmpty()){
            JOptionPane.showMessageDialog(this, "Por favor, preencha todos os campos","Erro",JOptionPane.ERROR_MESSAGE);
            return;
        }
        
        //Verifica se as senhas coincidem
        if(!senha.equals(confirmarSenha)){
            JOptionPane.showMessageDialog(this, "As senhas não coincidem","ERRO",JOptionPane.ERROR_MESSAGE);
            return;
            
        }
        //mensagem de sucesso
        JOptionPane.showMessageDialog(this,"CADASTRO FEITO COM SUCESSO!","SUCESSO",JOptionPane.INFORMATION_MESSAGE);
        
        //Limpa os campos apos o cadastro
        campoNome.setText("");
        campoEmail.setText("");
        campoSenha.setText("");
        campoConfirmarSenha.setText("");
        
    }

    
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    public static void main(String args[]) {
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Cadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Cadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Cadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Cadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold> 
                new Cadastro();
                //new Cadastro().setVisible(true);                   
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
