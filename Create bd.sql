create database bdestacionamento

use bdestacionamento

create table tbfuncionario(
codfunc int identity (1,1) primary key
,nomefunc varchar(30)
,datanascfunc datetime
,enderecofunc varchar(30)
,telefone varchar(9)
);

create table tbveiculo(
codveiculo int primary key
,modeloveiculo varchar(30)
,corveiculo varchar(30)
,corveiclo varchar(30)
);

create table tbtiqueti(
codigotiqueti int identity(1,1) primary key
,datadodia date
,horaentrada time
,codfunc int foreign key references tbfuncionario(codfunc)
,codveiculo int foreign key references tbveiculo(codveiculo)

);