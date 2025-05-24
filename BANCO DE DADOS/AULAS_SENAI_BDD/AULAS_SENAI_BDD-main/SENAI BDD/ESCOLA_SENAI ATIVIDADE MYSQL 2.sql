CREATE DATABASE ESCOLA_SENAI;

use ESCOLA_SENAI;

create table tb_aluno(
	ra_aluno INT PRIMARY KEY AUTO_INCREMENT,
	nome_alu varchar(45) not null,
    dt_nasc_alu DATE NOT NULL,
    cpf_alu VARCHAR(11) NOT NULL UNIQUE,
    sexo_alu ENUM("MASCULINO","FEMININO","X") NOT NULL DEFAULT "X"
);

CREATE TABLE tb_matricula(
	cod_mat int auto_increment primary key,
    data_mat date ,
	aluno int ,
    curso int ,
    FOREIGN KEY (curso) REFERENCES tb_curso(cod_curs),
	FOREIGN KEY (aluno) REFERENCES tb_aluno(ra_aluno)
);
 


CREATE TABLE tb_curso(
	cod_curs int primary key auto_increment ,
    nome_curs varchar(45) not null,
    per_curs enum("MATUTINO","VESPERTINO","NOTURNO") NOT NULL DEFAULT "NOTURNO",
    dur_curs varchar(10) not null,
    valor_curs decimal(6,2) not null
);

INSERT INTO tb_aluno(ra_aluno,nome_alu,dt_nasc_alu,cpf_alu,sexo_alu)
VALUES				(DEFAULT,"MATHEUS","2000-01-20","12345678910","MASCULINO"),
					(DEFAULT,"CARLOS","2000-01-20","12345678911","MASCULINO"),
                    (DEFAULT,"JOSE","2000-01-20","12345678912","MASCULINO"),
                    (DEFAULT,"JOAO","2000-01-20","12345678913","MASCULINO"),
                    (DEFAULT,"VITOR","2000-01-20","12345678914","MASCULINO"),
                    (DEFAULT,"GRAZI","2000-01-20","12345678915","FEMININO"),
                    (DEFAULT,"TEREZA","2000-01-20","12345678916","FEMININO"),
                    (DEFAULT,"GIGI","2000-01-20","12345678917","FEMININO"),
                    (DEFAULT,"CONCEIÇÃO","2000-01-20","12345678918","FEMININO"),
                    (DEFAULT,"MAKELLE","2000-01-20","12345678919","FEMININO");
                    
insert into tb_curso(cod_curs,nome_curs,per_curs,dur_curs,valor_curs)
VALUES				(default,"DIREITO","NOTURNO","10",722.50),
					(default,"SISTEMAS DE INFORMAÇÃO","NOTURNO","8",957.50),
                    (default,"NUTRIÇÃO","NOTURNO","10",1200.55),
                    (default,"FISIOTERAPIA","NOTURNO","10",1922.50),
                    (default,"MEDICINA","NOTURNO","12",8720.50);
                    
INSERT INTO tb_matricula(cod_mat,data_mat,aluno,curso)
values					(default,"2022-10-22",1,1),
						(default,"2022-10-01",2,1),
						(default,"2022-10-23",3,1),
                        (default,"2022-10-24",4,1),
                        (default,"2022-10-10",5,2),
                        (default,"2022-10-12",6,2),
                        (default,"2022-10-22",7,2),
                        (default,"2022-10-14",8,2),
                        (default,"2022-10-30",9,3),
                        (default,"2022-10-28",10,3),
                        (default,"2022-10-17",10,3),
                        (default,"2022-10-15",9,3),
                        (default,"2022-10-16",8,5),
                        (default,"2022-10-17",7,4),
                        (default,"2022-10-15",6,4),
                        (default,"2022-10-10",5,4),
                        (default,"2022-10-26",4,4),
                        (default,"2022-10-23",3,5),
                        (default,"2022-10-02",2,5),
                        (default,"2022-10-12",1,5);
                        
select * from tb_aluno;
SELECT * FROM tb_matricula;

SELECT * FROM tb_curso;   
drop table tb_aluno;    
drop table tb_curso;
drop table tb_matricula;                 
                    

