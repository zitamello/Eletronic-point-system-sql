use bd_point_system;
create table tipo_registro
	(cod_tipo int not null,
	 nome varchar(15),
     constraint pk_tipo primary key (cod_tipo));
     
create table departamento
	(cod_dep int not null,
     nome varchar(20) not null,
     gerente int,
     constraint pk_dep primary key (cod_dep));
     
create table empregado
	(matricula int not null,
	 nome varchar(40) not null,
     cpf varchar(11) not null,
     rg varchar(11),
     endereco varchar(50),
     sexo char(1),
     cargo varchar(20),
     data_nasc date,
     salario float,
     lotacao int,
     digital1 int,
     digital2 int,
     proj_alocado int,
     constraint pk_emp primary key (matricula));

create table registro
	(cod_reg int not null,
	 matr_emp int not null,
     data_hora datetime,
     tipo_reg int not null,
     constraint pk_registro primary key (cod_reg));

create table projeto
	(cod_proj int not null,
     nome_proj varchar(20),
     descricao varchar(50),
     mat_gerente int,
     constraint pk_projeto primary key (cod_proj));

 create table tarefa
	(cod_tarefa int not null,
     emp_resp int,
     data_tarefa date,
     qt_horas int,
     desc_tarefa varchar(50),
     projeto int,
     constraint pk_tarefa primary key (cod_tarefa));

create table pedidofolga
	(id_pedido int not null,
     matr_emp int not null,
     data_folga date,
     situacao varchar(10),
     qt_horas time,
     motivo varchar(45),
     constraint pk_pedidofolga primary key (id_pedido));


-- add constraints
alter table departamento add 
	constraint fk_gerente foreign key (gerente) references empregado (matricula);

alter table empregado 
	add constraint fk_lotacao foreign key (lotacao) references departamento (cod_dep),
	add constraint fk_proj foreign key (proj_alocado) references projeto(cod_proj);
    
alter table registro
	add constraint fk_mat foreign key (cod_reg) references empregado (matricula),
    add constraint fk_tipo foreign key (tipo_reg) references tipo_registro;
    
alter table tarefa
	add 
     
     
     
     

     
     