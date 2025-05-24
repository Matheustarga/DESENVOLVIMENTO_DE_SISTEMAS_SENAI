'''Sistema de Gerenciamento de Hotel:
○ Cadastro de hóspedes 5 (nome, número do quarto, data de entrada e saída).
○ Consulta de quartos disponíveis.
○ Registro de entrada e saída de hóspedes.
○ Listagem de hóspedes cadastrados.'''


#variaveis pra o hóspede, contendo nome,local para identificar o quarto do hóspede, data de entrada e saída
nome_1,nome_2,nome_3,nome_4,nome_5 = "","","","",""
local_1,local_2,local_3,local_4,local_5 = 0,0,0,0,0
entrada_1,entrada_2,entrada_3,entrada_4,entrada_5 = "","","","",""
saida_1,saida_2,saida_3,saida_4,saida_5 = "","","","",""

#Variaveis para quartos
quarto1,quarto2,quarto3,quarto4,quarto5 = "disponivel","disponivel","disponivel","disponivel","disponivel"
full = 0
#Inicio do sistema de gerenciamento
print("---------------------------------")
print("Sistema de Gerenciamento de Hotel")
print("---------------------------------")
#start do while principal do código
controle_menu=1

#loop principal, enquanto a variável de controle for diferente de 0 o loop continua rodando, até que seja finalizado pelo usuário.
while controle_menu != 0:
    controle_menu = int(input("Digite a função desejada!\n1-Cadastro de hospede\n2-Consulta de quartos disponveis\n3-Registro de entrada e saida\n4-Listagem de hóspedes cadastrados\n0-Sair\n"))
#primeira secção do menu responsável por realizar o cadastro dos hóspedes
    if controle_menu == 1:
#variável responsável por fazer a verificação da disponibilidade dos quartos de hotel, para que não ocorram reservas no mesmo quarto, e a cada seleção dessa secção a variável retorna ao valor original.
#Com isso ela faz a verificação dos quartos em ordem crescente, e os status de disponibilidade do quarto, assim como pede as infromações das variáveis de nome,entrada e saída.
#a verificação de disponibilidade é feita a partir de dois fatores, o controle para iniciar o cadastro e a string de disponibilidade do quarto.
        controle_cadastro = 0

        while controle_cadastro != 1:

            if quarto1 == "disponivel":  
                nome_1 = str(input("Digite o nome do hóspede: "))
                local_1 = 1
                entrada_1 = str(input("Digite o dia da entrada:"))
                saida_1 = str(input("Digite o dia da saida: "))
                quarto1 = "indisponivel"
                controle_cadastro = 1

            if controle_cadastro != 1 and quarto2 == "disponivel":  
                nome_2 = str(input("Digite o nome do hóspede: "))
                local_2 = 2
                entrada_2 = str(input("Digite o dia da entrada:"))
                saida_2 = str(input("Digite o dia da saida: "))
                quarto2 = "indisponivel"
                controle_cadastro = 1

            if controle_cadastro != 1 and quarto3 == "disponivel":  
                nome_3 = str(input("Digite o nome do hóspede: "))
                local_3 = 3
                entrada_3 = str(input("Digite o dia da entrada:"))
                saida_3 = str(input("Digite o dia da saida: "))
                quarto3 = "indisponivel"
                controle_cadastro = 1

            if controle_cadastro != 1 and quarto4 == "disponivel":  
                nome_4 = str(input("Digite o nome do hóspede: "))
                local_4 = 4
                entrada_4 = str(input("Digite o dia da entrada:"))
                saida_4 = str(input("Digite o dia da saida: "))
                quarto4 = "indisponivel"
                controle_cadastro = 1

            if controle_cadastro != 1 and quarto5 == "disponivel":  
                nome_5 = str(input("Digite o nome do hóspede: "))
                local_5 = 5
                entrada_5 = str(input("Digite o dia da entrada:"))
                saida_5 = str(input("Digite o dia da saida: "))
                quarto5 = "indisponivel"
                controle_cadastro = 1

#Segunda secção do menu, responsável pela verificação da disponibilidade dos quartos, e caso esteja ocupado apresentará também o nome do hóspede.
    if controle_menu == 2:
        print(f"O 1º quarto esta {quarto1} --- Hóspede: {nome_1}")
        print(f"O 2º quarto esta {quarto2} --- Hóspede: {nome_2}")
        print(f"O 3º quarto esta {quarto3} --- Hóspede: {nome_3}")
        print(f"O 4º quarto esta {quarto4} --- Hóspede: {nome_4}")
        print(f"O 5º quarto esta {quarto5} --- Hóspede: {nome_5}")

#Terceira secção d○ menu, Registro de entrada e saída de hóspedes. Responsável por realizar a saída dos hóspede, com isso sendo realizado por meio da alteração das variáveis.
    if controle_menu == 3:
        numero_quarto = int(input("Digite o numero do quarto que o hóspede esta de saida: "))
        if numero_quarto == local_1:
            nome_1 = "0"
            entrada_1 = "0"
            saida_1 = "0"
            quarto1 = "disponivel"
        if numero_quarto == local_2:
            nome_2 = "0"
            entrada_2 = "0"
            saida_2 = "0"
            quarto2 = "disponivel"
        if numero_quarto == local_3:
            nome_3 = "0"
            entrada_3 = "0"
            saida_3 = "0"
            quarto3 = "disponivel"
        if numero_quarto == local_4:
            nome_4 = "0"
            entrada_4 = "0"
            saida_4 = "0"
            quarto4 = "disponivel"
        if numero_quarto == local_5:
            nome_5 = "0"
            entrada_5 = "0"
            saida_5 = "0"
            quarto5 = "disponivel"

#Quarta secção do menu, responsável pela Listagem de hóspedes cadastrados, que informa o nome, o quato em que está hóspedado, e as datas de entrada e saída.

    if controle_menu == 4:
        if quarto1 == "indisponivel":
                print(f"Nome: {nome_1} \nQuarto: {local_1} \nEntrada: {entrada_1} \nSaida: {saida_1}")
        if quarto2 == "indisponivel":
                print(f"Nome: {nome_2} \nQuarto: {local_2} \nEntrada: {entrada_2} \nSaida: {saida_2}")
        if quarto3 == "indisponivel":
                print(f"Nome: {nome_3} \nQuarto: {local_3} \nEntrada: {entrada_3} \nSaida: {saida_3}")
        if quarto4 == "indisponivel":
                print(f"Nome: {nome_4} \nQuarto: {local_4} \nEntrada: {entrada_4} \nSaida: {saida_4}")
        if quarto5 == "indisponivel":
                print(f"Nome: {nome_5} \nQuarto: {local_5} \nEntrada: {entrada_5} \nSaida: {saida_5}")
#Quinta secção, que é executada quando o usuário digita zero e finaliza o programa.
print("ADEUS")