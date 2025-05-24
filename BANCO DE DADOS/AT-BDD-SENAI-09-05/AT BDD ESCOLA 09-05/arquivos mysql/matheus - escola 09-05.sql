CREATE DATABASE escola_senai_m;

use escola_senai_m;

select * FROM ALUNO;
select * FROM CAMPUS;
select * FROM CURSO;
select * FROM MATRICULA;

 drop table aluno;
 drop table campus;
 drop table curso;
 drop table matricula;

CREATE TABLE campus (
cod_campus int primary key not null,
cidade varchar(50) not null,
endereco varchar(100) not null
);

CREATE TABLE curso(
cod_curso int primary key,
nome_curso varchar(50) not null,
turno varchar(50) not null,
duracao int not null,
valor double(8,2) not null,
cod_campus int not null,
foreign key (cod_campus) references campus(cod_campus)
);

CREATE TABLE aluno(
reg_academico int primary key,
nome_aluno varchar(100) not null,
dt_nascimento date not null,
cpf varchar(11) UNIQUE not null,
sexo char(1) CHECK (sexo in ('M'or'F'))
);

CREATE TABLE matricula(
cod_matricula int primary key,
dt_matricula date not null,
reg_academico int,
cod_campus int,
foreign key (reg_academico) references aluno(reg_academico),
foreign key(cod_campus) references campus(cod_campus)
);



-- Lista de todos os cursos do campus de Vitória
SELECT cur.nome_curso , camp.cidade
	FROM CURSO AS cur
	inner join campus as camp
	on cur.cod_campus = camp.cod_campus
	where camp.cidade like 'Vitória' ;

-- Lista de todos os cursos em ordem Alfabética

select nome_curso from curso order by nome_curso asc ;

-- Quais os 5 cursos mais caros?

select nome_curso, valor from curso order by valor desc limit 5;

-- Qual curso é o mais barato no Campus da Serra?

select cur.nome_curso as nome, camp.cidade ,  cur.valor
	FROM curso as cur
    inner join campus as camp
    on cur.cod_campus = camp.cod_campus
    where camp.cidade like 'Serra' order by  cur.valor asc;
    
-- Qual o turno com mais cursos disponíveis?
select turno,count(turno) from curso group by turno limit 1;
