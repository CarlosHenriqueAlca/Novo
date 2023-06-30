create database carlos;
use carlos;

create table tb_cadastros(
id_cad int primary key auto_increment,
name_cad varchar(255),
senha_cad varchar(255),
categoria varchar(225),
email_cad varchar(255),
tel_cad varchar(255)
);

create table tb_prod(
id_prod int unsigned not null primary key auto_increment,
nome_prod varchar(255),
descricao_prod varchar(255),
codigo_prod varchar(30) unique,
quantidade_prod varchar(255),
fileira_prod varchar(255),
setor_prod varchar(255),
uso_prod varchar(255),
unidade_prod varchar(255)
);

drop table tb_chaves;
create table tb_chaves(
id_chave int unsigned not null auto_increment primary key,
nome_chave varchar(80),
codigo_chave varchar(80),
sala_chave varchar(80)

);

insert into tb_chaves (id_chave, sala_chave) values ('', 'Mecânica');

create table tb_empr(
id_empr int unsigned not null auto_increment primary key,
nome_empr varchar(255),
quantidade_empr varchar(255),
solicitante_empr varchar(255),
email_empr varchar(255),
telefone_empr varchar(255),
dataEHora_empr  varchar(255)
);

create table tb_emprestimosCh(
id_emprestimoChave int unsigned not null auto_increment primary key,
nome_pessoa varchar(255),
sala_chave varchar(255)
);

