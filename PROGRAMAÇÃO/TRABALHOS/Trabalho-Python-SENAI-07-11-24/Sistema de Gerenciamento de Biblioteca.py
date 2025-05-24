'''Sistema de Gerenciamento de Biblioteca:
○ Cadastro de 5 livros (título, autor, ano de publicação).
○ Consulta de livros disponíveis.
○ Empréstimo e devolução de livros.
○ Listagem de livros cadastrados.'''

#Criação das variáveis utilizadas no programa:
titulo1,titulo2,titulo3,titulo4,titulo5 = "","","","",""
autor1,autor2,autor3,autor4,autor5 = "","","","",""
#variável utilizada no controle do while principal
controle = 1
status1,status2,status3,status4,status5= "Disponível","Disponível","Disponível","Disponível","Disponível"

#Inicio do sistema de gerenciamento

print("--------------------------------------")
print("Sistema de Gerenciamento de Biblioteca")
print("--------------------------------------")

while controle == 1:
#MENU
    menu_op = int(input("MENU DO SISTEMA\n1 - Cadastro dos Livros\n2 - Consulta de livros disponíveis\n3 - Empréstimo e devolução\n4 - Listagem dos livros cadastrados\n5 - SAIR\n"))
#Cadastro dos itens(SÃO 5 itens de forma obrigatória) o cadastro é executado quando o usuário digita 1 na seleção do menu principal.
    if menu_op == 1:
#CADASTRO DO 1º LIVRO
        print("Cadastro do 1º Livro:")
        titulo1 = input("Informe o título do 1º livro\n")
        autor1 =input("Informe o autor do 1º livro\n")
        ano1 = int(input("Digite o ano de publicação do 1º livro\n"))
#CADASTRO DO 2º LIVRO
        print("Cadastro do 2º Livro:")
        titulo2 = input("Informe o título do  2º livro\n")
        autor2 = input("Informe o autor do 2º livro\n")
        ano2 = int(input("Digite o ano de publicação do  2º livro\n"))
#CADASTRO DO 3º LIVRO
        print("Cadastro do 3º Livro:")
        titulo3 = input("Informe o título do 3º livro\n")
        autor3 = input("Informe o autor do 3º livro\n")
        ano3 = int(input("Digite o ano de publicação do 3º livro\n"))
#CADASTRO DO 4º LIVRO
        print("Cadastro do 4º Livro:")
        titulo4 = input("Informe o título do 4º livro\n")
        autor4 = input("Informe o autor do 4º livro\n")
        ano4 = int(input("Digite o ano de publicação do 4º livro\n"))
#CADASTRO DO 5º LIVRO
        print("Cadastro do 5º Livro:")
        titulo5 = input("Informe o título do 5º livro\n")
        autor5 = input("Informe o autor do 5º livro\n")
        ano5 = int(input("Digite o ano de publicação do 5º livro\n"))

#Consulta de livros disponíveis, seleção do item 2 do menu principal:
    elif menu_op == 2:
#A consulta dos livros cadastrados e validada pelo uso do len, que verifica se o usúario cadastrou o primeiro livro, pois devido a brigatoriedade do cadastro dos 5 torna-se necessario a validação de apenas um
#se isso for verdadeiro será executado a comparação dos status dos livros por meio de um if, que vai comparar se a string é diferente de Indisponível, caso isso seja verdadeiro será exibido o livro, 
#caso contrário o livro não será mostrado na lista
        if len(titulo1) > 0:
            print("Lista dos livros")
            print(f"Títulos Disponíveis na Biblioteca: ")
            if status1 != "Indisponível":
                print(f"1 - Título: {titulo1}")

            if status2 != "Indisponível":
                print(f"2 - Título: {titulo2}")

            if status3 != "Indisponível":
                print(f"3 - Título: {titulo3}")

            if status4 != "Indisponível":
                print(f"4 - Título: {titulo4}")

            if status5 != "Indisponível":
                print(f"5 - Título: {titulo5}")

        else:
            print("Nenhum Livro cadastrado!\n Faça o cadastro dos livros primeiro!!")
#opção 3 do menu
#Empréstimo e devolução, secção destinada as ações de empréstimo e devolução, nesta secção existe um menu secundário que vai selecionar o tipo de operação, devolução ou empréstimo.
    elif menu_op == 3:
        menu_dev_emp = int(input("MENU: Empréstimo e devolução\n1 - Empréstimo\n2 - devolução\n3 - VOLTAR \n"))
        print(f"Títulos da Biblioteca:\n1 - Título: {titulo1} - AUTOR: {autor1} - ANO: {ano1} - Status: {status1}\n2 - Título: {titulo2} - AUTOR: {autor2} - ANO: {ano2} - Status: {status2}\n3 - Título: {titulo3} - AUTOR: {autor3} - ANO: {ano3} - Status: {status3}\n4 - Título: {titulo4} - AUTOR: {autor4} - ANO: {ano4} - Status: {status4}\n5 - Título: {titulo5} - AUTOR: {autor5} - ANO: {ano5} - Status: {status5}\n")
        #seleção do empréstimo e devolução dos livros feitos por meio de if,elif,else.
        #PARA A CLASSIFICAÇÃO DOS ITENS USAMOS UMA VARIÁVEL DE STATUS PARA DEFINIR COMO DISP. OU INDSP. E UM MENU PARA CUNSULTA DO USER
        if menu_dev_emp == 1:
            #EMPRÉSTIMO
            selecao_livro = int(input("Informe o livro que deseja pegar emprestado(Número do menu!): \n"))
            if selecao_livro == 1:
                status1 ="Indisponível"
                print("Ação realizada com sucesso!!")

            elif selecao_livro == 2:
                status1 ="Indisponível"
                print("Ação realizada com sucesso!!")

            elif selecao_livro == 3:
                status3 ="Indisponível"
                print("Ação realizada com sucesso!!")

            elif selecao_livro == 4:
                status4 ="Indisponível"
                print("Ação realizada com sucesso!!")

            elif selecao_livro == 5:
                status5 ="Indisponível"
                print("Ação realizada com sucesso!!")
#devolução dos livros feitos utilizando seleção e alteração do status de disponibilidade. Assim como a cada ação feita ele retorna ao usuário um infromativo da efetivação da ação(no caso a devolução do livro).
        elif menu_dev_emp == 2:
            selecao_livro = int(input("Informe o livro que deseja devolver(Número do menu!): \n"))
            if selecao_livro == 1:
                status1 ="disponível"
                print("Livro devolvido com sucesso!!")

            elif selecao_livro == 2:
                status1 ="disponível"
                print("Livro devolvido com sucesso!!")

            elif selecao_livro == 3:
                status3 ="disponível"
                print("Livro devolvido com sucesso!!")

            elif selecao_livro == 4:
                status4 ="disponível"
                print("Livro devolvido com sucesso!!")

            elif selecao_livro == 5:
                status5 ="disponível"
                print("Livro devolvido com sucesso!!") 

#Listagem dos livros cadastrados, 4ª opção do menu principal.
#A consulta dos livros cadastrados e validada pelo uso do len, que verifica se o usúario cadastrou o primeiro livro, pois devido a brigatoriedade do cadastro dos 5 torna-se necessario a validação de apenas um
#se isso for verdadeiro será exibido os itens cadastrados, caso seja falso mostra um alerta de Erro.

    elif menu_op == 4:
        if len(titulo1) > 0:
            print(f"Títulos da Biblioteca:\n1 - Título: {titulo1} - AUTOR: {autor1} - ANO: {ano1} - Status: {status1}\n2 - Título: {titulo2} - AUTOR: {autor2} - ANO: {ano2} - Status: {status2}\n3 - Título: {titulo3} - AUTOR: {autor3} - ANO: {ano3} - Status: {status3}\n4 - Título: {titulo4} - AUTOR: {autor4} - ANO: {ano4} - Status: {status4}\n5 - Título: {titulo5} - AUTOR: {autor5} - ANO: {ano5} - Status: {status5}\n")
        else:
            print("Nenhum Livro cadastrado!\n Faça o cadastro dos livros primeiro!!")
#SAIR 5ª opção do menu principal, tem a finalidade de finalizar o loop principal do programa e assim encerrar sua execução, exibindo um retorne de finalização.
    elif menu_op == 5:
        controle = 0
print("Programa finalizado!!!!!")