--A partir das tabelas abaixo, faça:
--Funcionário (Código, Nome, Salário)
--Dependendente (Código_Funcionário, Nome_Dependente, Salário_Dependente)

--a) Uma Function que Retorne uma tabela:
--(Nome_Funcionário, Nome_Dependente, Salário_Funcionário, Salário_Dependente)

create database db_funcionario_e_dependente
use db_funcionario_e_dependente
go
create table Funcionario(
	codigo int not null,
	nome varchar(50),
	salario decimal(7,2)
	primary key(codigo)
	)
create table Dependente(
	codigo_funcionario int not null,
	nome_dependente varchar(50),
	salario_dependente decimal(7,2),
	primary key(codigo_funcionario),
	foreign key(codigo_funcionario) references Funcionario(codigo),
)
insert into Funcionario values
(1,'João',24000),
(2,'Maria',5000),
(3,'José',4000),
(4,'Junior',3000)

insert into Dependente values
(1,'Marcos',1000),
(2,'Josias',1200),
(3,'Julia',1400),
(4,'Alice',1300)
CREATE FUNCTION fn_table()
returns @table TABLE(
nome varchar(50),
nome_dependente varchar(50),
salario decimal(7,2),
salario_dependente decimal(7,2)
)
as
begin
	INSERT INTO @table (nome,nome_dependente,salario,salario_dependente)
	SELECT nome,nome_dependente,salario,salario_dependente FROM Funcionario,Dependente
	return
end
SELECT * from dbo.fn_table()
--b) Uma Scalar Function que Retorne a soma dos Salários dos dependentes, mais a do funcionário.
create function fn_salario()
returns decimal(7,2)
as
begin
	DECLARE @salarioTotal decimal(7,2)
	select @salarioTotal=COUNT(salario)+COUNT(salario_dependente) from Funcionario, Dependente
	return @salarioTotal
end

print dbo.fn_salario()