CREATE DATABASE locadora;

USE locadora;

CREATE TABLE tb_diretor(
	id_diretor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40)
);

CREATE TABLE tb_filme(
	id_filme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50),
    id_dir INT,
    genero VARCHAR(20),
    ano_lancamento char(4),
    class_indicativa int,
    FOREIGN KEY(id_dir) REFERENCES tb_diretor(id_diretor)
);

CREATE TABLE tb_cliente(
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50),
    dt_nasc DATE,
    cpf VARCHAR(13),
    sexo enum('F','M')
);

CREATE TABLE tb_locacao(
	id_locacao INT AUTO_INCREMENT PRIMARY KEY,
    id_cli INT,
    id_filme INT,
    dt_emprestimo DATE,
    dt_devolucao_prevista DATE,
    dt_devolucao_baixa DATE,
	FOREIGN KEY(id_cli) REFERENCES tb_cliente(id_cliente),
	FOREIGN KEY(id_filme) REFERENCES tb_filme(id_filme)
);

SELECT * FROM tb_cliente;
SELECT * FROM tb_diretor;
SELECT * FROM tb_filme;
SELECT * FROM tb_locacao;

-- Lista de todos os filmes do Steven Spielberg
SELECT dir.nome, fil.titulo FROM tb_filme as fil
JOIN tb_diretor as dir
ON fil.id_dir = dir.id_diretor
WHERE dir.nome = "Steven Spielberg";


-- Lista de todos os filmes por ordem de lançamento
SELECT fil.titulo, fil.ano_lancamento FROM tb_filme as fil
ORDER BY fil.ano_lancamento ASC;

-- Lista de todos os filmes por do gênero Drama e Romance
SELECT fil.titulo, fil.genero FROM tb_filme as fil
WHERE fil.genero = "Romance" OR fil.genero = "Drama";

-- Lista de todos os filmes de terror com classificação de -18 anos
SELECT fil.titulo, fil.class_indicativa FROM tb_filme as fil
WHERE fil.genero = "Terror" AND fil.class_indicativa < 18;

-- Qual o nome filme mais locado?
SELECT fil.titulo, count(loc.id_filme) AS aparicoes 
FROM tb_filme as fil
JOIN tb_locacao AS loc
ON fil.id_filme = loc.id_filme
GROUP BY loc.id_filme
HAVING aparicoes = max(aparicoes);

-- Qual o cliente com mais locações?
SELECT cli.nome, count(loc.id_cli) AS contagem 
FROM tb_cliente as cli
JOIN tb_locacao AS loc
ON cli.id_cliente = loc.id_cli
GROUP BY loc.id_cli
HAVING contagem = max(contagem);

-- Qual o filme mais locado entre as mulheres?
SELECT cli.nome, fil.titulo, count(loc.id_cli) AS contagem 
FROM tb_cliente as cli
JOIN tb_locacao AS loc
ON cli.id_cliente = loc.id_cli
JOIN tb_filme as fil
ON fil.id_filme = loc.id_filme
WHERE cli.sexo = 'F'
GROUP BY loc.id_cli
HAVING contagem = max(contagem);

-- Qual o filme mais locado entre os homens e do gênero ação?
SELECT cli.nome, fil.titulo, count(loc.id_cli) AS contagem FROM tb_cliente as cli
JOIN tb_locacao AS loc
ON cli.id_cliente = loc.id_cli
JOIN tb_filme as fil
ON fil.id_filme = loc.id_filme
WHERE cli.sexo = 'M' AND fil.genero = "Ação"
GROUP BY loc.id_cli
HAVING contagem = max(contagem);

-- Qual o filme locado pelo cliente do Id 7, e qual seu nome, e qual a data foi sua data de devolução?
SELECT cli.nome, fil.titulo, loc.dt_devolucao_baixa 
FROM tb_cliente as cli
JOIN tb_locacao AS loc
ON cli.id_cliente = loc.id_cli
JOIN tb_filme as fil
ON fil.id_filme = loc.id_filme
WHERE cli.id_cliente = 7;


-- Quais os filmes foram devolvidos após a data prevista?
SELECT fil.titulo, loc.dt_devolucao_prevista, loc.dt_devolucao_baixa 
FROM tb_filme as fil
JOIN tb_locacao AS loc 
ON fil.id_filme = loc.id_filme
WHERE loc.dt_devolucao_prevista <> loc.dt_devolucao_baixa;

-- Quantas vezes o filme “The Dark Knight” foi locado?
SELECT fil.titulo, count(loc.id_filme) as vezes
FROM tb_filme as fil
JOIN tb_locacao AS loc 
ON fil.id_filme = loc.id_filme
WHERE fil.titulo = "The Dark Knight"
GROUP BY fil.titulo;

-- Lista dos 5 filmes mais locados em ordem decrescente
SELECT fil.titulo, count(loc.id_filme) as vezes
FROM tb_filme as fil
JOIN tb_locacao AS loc 
ON fil.id_filme = loc.id_filme
GROUP BY fil.titulo
ORDER BY count(loc.id_filme) DESC
LIMIT 5;

-- Lista dos 3 clientes com mais locações em ordem decrescente
SELECT cli.nome, count(cli.id_cliente) as vezes
FROM tb_cliente as cli
JOIN tb_locacao AS loc 
ON cli.id_cliente = loc.id_cli
GROUP BY cli.id_cliente
ORDER BY count(cli.id_cliente) DESC
LIMIT 3;

-- Lista de filmes que não foram devolvidos
SELECT fil.titulo, dt_devolucao_baixa
FROM tb_filme as fil
JOIN tb_locacao AS loc 
ON fil.id_filme = loc.id_filme
WHERE dt_devolucao_baixa IS NULL;

-- Lista de filmes sem locação
SELECT fil.titulo, dt_emprestimo
FROM tb_filme as fil
LEFT JOIN tb_locacao AS loc 
ON fil.id_filme = loc.id_filme
WHERE loc.id_filme IS NULL;

SELECT * FROM tb_locacao
WHERE id_filme NOT IN (SELECT id_filme FROM tb_filme);


-- Lista de todos os filmes com seus respectivos diretores
CREATE VIEW filmes_diretor AS
SELECT fil.titulo, dir.nome as diretor FROM tb_filme as fil
JOIN tb_diretor as dir
ON fil.id_dir = dir.id_diretor;

-- Lista de todas as locações com seus respectivos clientes e filmes e data de locação
CREATE VIEW locacoes AS
SELECT cli.nome as cliente, fil.titulo as filme, loc.dt_emprestimo as `Data Empréstimo`
FROM tb_cliente as cli
JOIN tb_locacao AS loc
ON cli.id_cliente = loc.id_cli
JOIN tb_filme as fil
ON fil.id_filme = loc.id_filme;


DElImITER $$

-- CRIA A PROCEDURE DE INSERIR UM NOVO FILME NA TABELA FILME
create procedure pro_novo_filme(titulo varchar(100),diretor int,genero varchar(100),ano_lan char(4),class int)
	-- INICIA A PROCEDURE
	begin 
		-- INSERE UM NOVO FILME
		insert into tb_filme
		values (default,titulo,diretor,genero,ano_lan,class);
		-- LISTA TODOS OS FILMES
		select * from tb_filme;
	-- FINALIZA A LISTA DE COMANDOS DA PROCEDURE
	end $$
    
    DELIMITER ;
    
    
    call pro_novo_filme("O Ataque dos Clones",8,"Animaçõa",2009,16);