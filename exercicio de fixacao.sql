create database exercicio_de_fixacao

--criando as tabelas
create table Fornecedor
(
	id int identity (1,1)
	,nome varchar (50)
	,CNPJ varchar (14)
	,endereco varchar(200)
)

create table Modelo
(
	id int identity (1,1)
	,idFornecedor int
	,codigoRef varchar(50)
	,cor varchar(50)
	,tamanho int
)

create table Estoque
(
	id int identity (1,1)
	,idModelo int
	,qtd int
)

-- definindo PKs
alter table Fornecedor
add constraint PK_FORNECEDOR primary key (id)

alter table Modelo
add constraint PK_MODELO primary key (id)

alter table Estoque
add constraint PK_ESTOQUE primary key (id)

-- definindo FKs
alter table Modelo
add constraint FK_MODELO_1 foreign key (idFornecedor) REFERENCES Fornecedor(id)

alter table Estoque
add constraint FK_ESTOQUE_1 foreign key (idModelo) REFERENCES Modelo (id)

-- adicionando Fornecedores
insert into Fornecedor
values ( 'empresa', '11506953000142', 'Rua da Empresa')

insert into Fornecedor
values ('Seneca S', '92290806000180', 'Rua da Seneca')

insert into Fornecedor
values ('Wire S', '74117687000186', 'Rua da Wire')

insert into Fornecedor
values( 'W Meta', '00783496000117', 'Rua da Meta')

insert into Fornecedor
values( 'Y Garagem', '92131054000104', 'Rua da Garagem')


-- Entradas de modelo
insert into Modelo
values 
	('1', '698986', 'branco', '50')
	,('1', '624276', 'preto', '50')
	,('1', '628385', 'azul', '10')
	,('1', '414485', 'verde', '12')
	,('1', '231587', 'cinza', '12')
	,('1', '147772', 'laranja', '12')
	,('1', '819304', 'branco', '50')
	,('1', '469639', 'azul marinho', '50')
	,('1', '498747', 'cinza', '50')
	,('2', '256444', 'branco', '30')
	,('2', '538393', 'laranja', '30')
	,('2', '383495', 'marrom', '37')
	,('2', '881096', 'fúcsia', '8')
	,('2', '966518', 'ciano', '10')
	,('2', '638225', 'branco', '50')
	,('2', '589961', 'laranja', '32')
	,('2', '146573', 'marrom', '32')
	,('2', '638022', 'cinza', '2')
	,('3', '324934', 'branco', '10')
	,('3', '637503', 'amarelo', '10')
	,('3', '110112', 'rosa', '10')
	,('3', '283782', 'verde água', '50')
	,('3', '744430', 'roxo', '50')
	,('3', '111052', 'vermelho', '50')
	,('3', '861823', 'branco', '50')
	,('3', '041702', 'amarelo', '3')
	,('3', '415209', 'amarelo', '3')
	,('4', '631757', 'branco', '50')
	,('4', '710982', 'verde escuro', '50')
	,('4', '338543', 'verde claro', '50')
	,('4', '798065', 'marrom', '18')
	,('4', '107861', 'laranja', '18')
	,('4', '602467', 'azul', '1')
	,('4', '904464', 'preto', '72')
	,('4', '150821', 'verde claro', '72')
	,('4', 'ts67of', 'amrelo', '8')
	,('5', '7k0xj8', 'branco', '25')
	,('5', 'e3sw1g', 'roxo', '50')
	,('5', 'fax17d', 'azul', '50')
	,('5', 'on5hj5', 'laranja', '50')
	,('5', 'o49b0k', 'preto', '50')
	,('5', 'o7gli8', 'dourado', '5')
	,('5', '6woojg', 'cinza', '37')
	,('5', '1r5eor', 'branco', '3')
	,('5', '3bt8yz', 'branco', '8')

--removendo as FKs relacionadas à tabela Modelo pra poder fazer o truncate e corrigir valores
alter table Modelo
drop constraint FK_MODELO_1

alter table Estoque
drop constraint FK_ESTOQUE_1

truncate table Modelo

--adicionando as FKs novamente 
alter table Modelo
add constraint FK_MODELO_1 foreign key (idFornecedor) REFERENCES Fornecedor (id)

alter table Estoque
add constraint FK_ESTOQUE_1 foreign key (idModelo) REFERENCES Modelo (id)

-- adicionei os valores da tabela Modelo novamente, mas é muita coisa pra copiar e colocar aqui)

-- entradas de estoque
insert into Estoque
values
	('1', '50')
	,('2', '32')
	,('3', '13')
	,('4', '12')
	,('5', '12')
	,('6', '12')
	,('7', '50')
	,('8', '50')
	,('9', '22')
	,('10', '135')
	,('11', '30')
	,('12', '37')
	,('13', '8')
	,('14', '10')
	,('15', '79')
	,('16', '65')
	,('17', '85')
	,('18', '22')
	,('19', '185')
	,('20',  '80')
	,('21', '55')
	,('22', '79')
	,('23', '50')
	,('24', '51')
	,('25', '33')
	,('26', '3')
	,('27', '201')
	,('28', '95')
	,('29', '50')
	,('30', '50')
	,('31', '18')
	,('32', '18')
	,('33', '1000')
	,('34', '1')
	,('35', '72')
	,('36', '8')
	,('37', '85')
	,('38', '98')
	,('39', '7')
	,('40', '65')
	,('41', '47')
	,('42', '5')
	,('43',  '76')
	,('44', '25')
	,('45', '8')

--simulando saídas de estoque
	update Estoque
	set qtd = '12'
	where id = '10'

	update Estoque
	set qtd = '183'
	where id = '19'

	update Estoque
	set qtd = '35'
	where id = '8'

	update Estoque
	set qtd = '0'
	where id = '34'

	update Estoque
	set qtd = '60'
	where id = '40'

	update Estoque
	set qtd = '1'
	where id = '45'

	update Estoque
	set qtd = '2'
	where id = '42'

	update Estoque
	set qtd = '35'
	where id = '27'

	update Estoque
	set qtd = '97'
	where id = '38'

	update Estoque
	set qtd = '980'
	where id = '33'	

-- excluindo fornecedor
	delete Fornecedor 
	where id = '1'
	
-- Fazer o comando direto dá erro por causa da FK_MODELO_1. Vou remover todos os registros relacionado ao fornecedor (modelos de produtos e estoque)

	select * from Fornecedor
	select * from Modelo
	select * from Estoque

-- removendo todo o estoque de produtos relacionados ao fornecedor 
	delete Estoque
	where id = '1'

	delete Estoque
	where id = '2'

	delete Estoque
	where id = '3'

	delete Estoque
	where id = '4'

	delete Estoque
	where id = '5'

	delete Estoque
	where id = '6'

	delete Estoque
	where id = '7'

	delete Estoque
	where id = '8'
	
	delete Estoque
	where id = '9'

-- removendo os modelos relacionados ao fornecedor

	delete Modelo
	where id = '1'
	
	delete Modelo
	where id = '2'
	
	delete Modelo
	where id = '3'
	
	delete Modelo
	where id = '4'
	
	delete Modelo
	where id = '5'
	
	delete Modelo
	where id = '6'
	
	delete Modelo
	where id = '7'
	
	delete Modelo
	where id = '8'
	
	delete Modelo 
	where id = '9'

-- removendo fornecedor

	delete Fornecedor 
	where id = '1'

-- criando tabelas: Categoria, Cliente e Vendas
create table Categoria
(
	id int identity (1,1)
	,Nome varchar (100)
)

create table Cliente
(
	id int identity (1,1)
	,Nome varchar (300)
	,CPF varchar (11)
	,Endereco varchar (300)
	,Sexo varchar (1)
)

create table Vendas
(
	id int identity (1,1)
	,id_modelo int
	,id_cliente int
	,quantidade int
	,dtvenda datetime
)

-- segunda parte 
--
--
--

 
-- adicionando as novas PKs
alter table Categoria
add constraint PK_CATEGORIA primary key (id) 

alter table Cliente
add constraint PK_CLIENTE primary key (id)

alter table Vendas 
add constraint PK_VENDAS_ primary key (id)

-- adicionando as novas FKs
alter table Vendas
add constraint FK_VENDAS_1 foreign key (id_modelo) REFERENCES Modelo (id)

alter table Vendas
add constraint FK_VENDAS_2 foreign key (id_cliente) REFERENCES Cliente (id)
