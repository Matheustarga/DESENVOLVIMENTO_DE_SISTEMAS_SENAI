create database livraria;

use livraria;

create table autores(
	autor_id int primary key auto_increment,
	ome varchar(50)
);

create table generos(
	genero_id int primary key auto_increment,
	nome varchar(50)
);

create table livros(
	livro_id int primary key auto_increment,
	titulo varchar(50),
	dt_lancamento date,
	autor_id int,
	genero_id int,
	foreign key (autor_id) references autores(autor_id),
	foreign key (genero_id) references generos(genero_id)

);

-- ver tabelas
select * from autores;
select * from livros;
select * from generos;


-- joins
-- inner join
SELECT l.titulo,a.nome as autor 
FROM livros as l    -- essa linha sempre será a tabela A
INNER JOIN autores as a
ON  l.autor_id = a.autor_id; -- a segunda tabela declarada é a tabela B

SELECT l.titulo,a.nome as autor
FROM livros as l
RIGHT JOIN autores as a
ON l.autor_id = a.autor_id;

-- LEFT OUTER JOIN
SELECT l.titulo,a.nome as autor
FROM livros as l
LEFT JOIN autores as a
ON l.autor_id = a.autor_id
WHERE a.autor_id IS NULL;

-- RIGHT outer JOIN
SELECT l.titulo,a.nome as autor
FROM livros as l
RIGHT JOIN autores as a
ON l.autor_id = a.autor_id
WHERE l.autor_id IS NULL;




-- FULL OUTER JOIN
SELECT l.titulo,a.nome as autor
FROM livros as l
LEFT JOIN autores as a
ON l.autor_id = a.autor_id
WHERE a.autor_id IS NULL

UNION

SELECT l.titulo,a.nome as autor
FROM livros as l
RIGHT JOIN autores as a
ON l.autor_id = a.autor_id
WHERE l.autor_id IS NULL;

