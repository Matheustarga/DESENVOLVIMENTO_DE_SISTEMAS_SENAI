create database locadora;
use locadora;

/*drop table tabela_diretor;
drop table tabela_filme;
drop table tabela_cliente;
drop table tabela_locacao;*/

create table tabela_diretor(
	id_diretor int primary key auto_increment,
    nome_diretor varchar(50) not null
);

create table tabela_filme(
	id_filme  int primary key auto_increment,
    titulo varchar(100) not null,
    genero varchar(50) not null,
    ano_lancamento int not null,
    class_indicativa int,
    id_diretor int,
	foreign key (id_diretor) references tabela_diretor(id_diretor)
);

create table tabela_cliente(
	id_cliente int primary key auto_increment,
    nome_cliente varchar(100) not null,
    email varchar(100) not null,
    dt_nascimento date not null,
    cpf varchar(11) unique not null,
    sexo char(1) not null
);

create table tabela_locacao(
	id_locacao int primary key auto_increment,
    dt_emprestimo date not null,
    dt_dev_prev date not null,
    dt_baixa date not null,
    id_cliente int,
    id_filme int,
    foreign key (id_cliente) references tabela_cliente(id_cliente),
    foreign key (id_filme) references tabela_filme(id_filme)    
);
/*Lista de todos os filmes do Steven Spielberg*/
select titulo ,nome_diretor
from tabela_diretor as d
inner join tabela_filme as f on f.id_diretor = d.id_diretor
where(nome_diretor = "Steven Spielberg");

/*Lista de todos os filmes por ordem de lançamento*/
select titulo,  ano_lancamento from tabela_filme
order by  ano_lancamento asc;

/*Lista de todos os filmes por do gênero Drama e Romance*/
select titulo ,  genero from tabela_filme
where(genero = "Drama" or genero = "Romance");

/*Lista de todos os filmes de terror com classificação de -18 anos*/
select titulo, class_indicativa from tabela_filme
where(class_indicativa < 18) order by class_indicativa desc;

/*Qual o nome filme mais locado?*/
select titulo , count(titulo) 
from tabela_filme as f
inner join tabela_locacao as l
on f.id_filme = l.id_filme
group by titulo order by count(titulo) desc;

/*Qual o cliente com mais locações?*/
select nome_cliente, count(nome_cliente) as qtd_filmes
from tabela_cliente as c
inner join tabela_locacao as l
on c.id_cliente = l.id_cliente
group by nome_cliente order by count(nome_cliente) desc;

/*Qual o filme mais locado entre as mulheres?*/
select titulo, count(titulo) as "QTD de loc. por mulheres"
from tabela_filme as f
inner join tabela_locacao as l
on f.id_filme = l.id_filme
inner join tabela_cliente as c
on l.id_cliente = c.id_cliente
where(sexo = "F");

/*Qual o filme mais locado entre os homens e do gênero ação?*/
select titulo, genero, count(titulo) as "QTD de loc."
from tabela_filme as f
inner join tabela_locacao as l
on f.id_filme = l.id_filme
where (genero = "ação") group by titulo order by count(titulo) desc;

/*Qual o filme locado pelo cliente do Id 7,
 e qual seu nome, e qual a data foi sua data de devolução?*/
select nome_cliente, dt_baixa, titulo, l.id_cliente
from tabela_cliente as c
inner join tabela_locacao as l
on c.id_cliente = l.id_cliente
inner join tabela_filme as f
on l.id_filme = f.id_filme
where(l.id_cliente = 7);

/*Quais os filmes foram devolvidos após a data prevista?*/
select titulo
from tabela_filme as f
inner join tabela_locacao as l
on f.id_filme = l.id_filme
where(dt_dev_prev < dt_baixa) group by titulo;

/*Quantas vezes o filme “The Dark Knight” foi locado?*/
select titulo, count(titulo) as "QTD"
from tabela_filme as f
inner join tabela_locacao as l
on f.id_filme = l.id_filme
where(titulo = "The Dark Knight");

/*Lista dos 5 filmes mais locados em ordem decrescente*/
select titulo, count(titulo) as "QTD de loc."
from tabela_filme as f
inner join tabela_locacao as l
on f.id_filme = l.id_filme group by titulo order by count(titulo) desc limit 5;

/*Lista dos 3 clientes com mais locações em ordem decrescente*/
select nome_cliente, count(nome_cliente) as "QTD locação"
from tabela_cliente as c
inner join tabela_locacao as l
on c.id_cliente = l.id_cliente 
group by nome_cliente order by count(nome_cliente) desc limit 3;

/*Lista de filmes que não foram devolvidos*/
select titulo
from tabela_filme as f
inner join tabela_locacao as l
on f.id_filme = l.id_filme
where(dt_baixa is null);

/*Lista de filmes sem locação*/
select titulo
	from tabela_filme as f
	left join tabela_locacao as l
	on f.id_filme = l.id_filme
	where(l.id_filme is null);

/*LISTA DE VIEWS*/
/*Lista de todos os filmes com seus respectivos diretores*/
create view filme_diretor as
	select titulo ,  nome_diretor from tabela_filme as f
	inner join tabela_diretor as d
	on f.id_diretor = d.id_diretor;

select * from filme_diretor;

/*Lista de todas as locações com seus 
respectivos clientes e filmes e data de locação*/
create view lista_loc as
	select nome_cliente,titulo,dt_emprestimo
	from tabela_filme as f
	inner join tabela_locacao as l
	on f.id_filme = l.id_filme
	inner join tabela_cliente as c
	on c.id_cliente = l.id_cliente;
    
select * from lista_loc;


/*Insira 4 novos filmes, 4 novos clientes e 4 novas 
locações em suas respectivas tabelas (via sql, não importação, e data de locação sendo hoje)*/
/*TABELA DE FILME*/
insert into tabela_filme(titulo,genero,ano_lancamento,class_indicativa,id_diretor)
values(
	"Todos","Terror","2000","18",1    
);
insert into tabela_filme(titulo,genero,ano_lancamento,class_indicativa,id_diretor)
values(
	"Nenhum","Drama","2010","18",1    
);
insert into tabela_filme(titulo,genero,ano_lancamento,class_indicativa,id_diretor)
values(
	"Talvez","Futurista","3000","16",1    
);
insert into tabela_filme(titulo,genero,ano_lancamento,class_indicativa,id_diretor)
values(
	"Certeza","Romance","2020","14",1    
);
/*TABELA DE CLIENTE*/
insert into tabela_cliente(nome_cliente,email,dt_nascimento,cpf,sexo)
values("Carlos O LOUCO","carloslouco@hotmail.com","1800/02/02","15915915959","M");
insert into tabela_cliente(nome_cliente,email,dt_nascimento,cpf,sexo)
values("Carlos O doido","carlosdoido@hotmail.com","1850/07/01","15915915979","M");
insert into tabela_cliente(nome_cliente,email,dt_nascimento,cpf,sexo)
values("Carlos O biruta","carlosbiruta@hotmail.com","1870/09/07","15915913959","M");
insert into tabela_cliente(nome_cliente,email,dt_nascimento,cpf,sexo)
values("Carlos O maluco","carlosmaluco@hotmail.com","1990/07/07","15915914959","M");


/*TABELA LOCAÇÃO*/
INSERT INTO tabela_locacao(dt_emprestimo,dt_dev_prev,dt_baixa,id_cliente,id_filme)
values("2025/05/28","2025/05/28","2025/05/28",1,2);
INSERT INTO tabela_locacao(dt_emprestimo,dt_dev_prev,dt_baixa,id_cliente,id_filme)
values("2025/05/28","2025/05/28","2025/05/28",3,4);
INSERT INTO tabela_locacao(dt_emprestimo,dt_dev_prev,dt_baixa,id_cliente,id_filme)
values("2025/05/28","2025/05/28","2025/05/28",5,6);
INSERT INTO tabela_locacao(dt_emprestimo,dt_dev_prev,dt_baixa,id_cliente,id_filme)
values("2025/05/28","2025/05/28","2025/05/28",7,8);