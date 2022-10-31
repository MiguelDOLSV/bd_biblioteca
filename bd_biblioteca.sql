create database bd_biblioteca;
use bd_biblioteca;

create table editora (
id_editora int not null auto_increment primary key,
nome_editora varchar (200),
telefone  varchar (200),
endereco varchar (200)
)default charset = utf8; 

create table livros (
id_livros int not null auto_increment primary key,
nome_livro varchar (200),
genero_livro varchar (200),
cod_livro varchar(15),
id_autores int,
id_editora int
)default charset = utf8; 


create table autores(
id_autores int not null auto_increment primary key,
nome_autor varchar (200),
telefone_autor varchar (200),
endereco_autor varchar(200)
)default charset = utf8; 

create table emprestimo(
id_emprestimo int not null auto_increment primary key,
data_devolucao date,
data_emprestimo date,
id_livros int,
id_usuario int
)default charset = utf8; 

create table usuarios (
id_usuarios int not null auto_increment primary key,
nome_usuario varchar (200),
cod_usuario varchar (200),
telefone_usuario varchar (200),
endereco varchar (200)
)default charset = utf8; 



alter table livros add constraint fk_autor foreign key (id_autores) references autores(id_autores);
alter table livros add constraint fk_editora foreign key(id_editora) references editora(id_editora);
alter table emprestimo add constraint fk_livro foreign key(id_livros) references livros(id_livros);
alter table emprestimo add constraint fk_usuario foreign key(id_usuario) references usuarios(id_usuarios);


insert into livros (nome_livro, genero_livro, cod_livro, id_editora, id_autores)
values ('Sonho', 'romance', '1','1','1');

insert into autores(nome_autor, telefone_autor, endereco_autor)
values ('Ricardo', '12345678','Rua do Pelicanos, Paranaguá PR - Brasil');

insert into editora (nome_editora, telefone, endereco)
values ('Garcia', '12345678', 'Rua Miguel Ribeiro de Araujo, Paranaguá PR - Brasil');

insert into usuarios (nome_usuario, cod_usuario, telefone_usuario)
values ('Fernando', '1', '12345678');
 
insert into emprestimo (data_emprestimo, data_devolucao, id_livros, id_usuario)
values ( '2022-10-01','2022-11-06','1','1');

select*from livros;
select*from editora;
select*from autores;
select*from usuarios;
select*from emprestimo;