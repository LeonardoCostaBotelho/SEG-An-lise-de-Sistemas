-- 1. CRIAÇÃO DO BANCO DE DADOS
-- CREATE DATABASE autopeca_db;
-- USE autopeca_db;

------------------------------------------
-- 2. CRIAÇÃO DAS TABELAS BÁSICAS (ENTIDADES)
------------------------------------------

-- Tabela de produtos

CREATE TABLE Produtos 
( 
 nome_produto VARCHAR(n) NOT NULL,  
 id_produto INT NOT NULL AUTO_INCREMENT,  
 quantidade_produto INT NOT NULL DEFAULT '0',  
 cod_produto INT PRIMARY KEY,  
 preco_produto FLOAT NOT NULL,  
 status_produto VARCHAR(n) NOT NULL DEFAULT 'Inativo',  
 obs_produto VARCHAR(n),  
 UNIQUE (id_produto)
); 

-- Tabela de vendas

CREATE TABLE Vendas 
( 
 id_venda INT PRIMARY KEY NOT NULL AUTO_INCREMENT,  
 data_venda DATE NOT NULL,  
 quantidade_produto_vendido INT NOT NULL,  
 valor_total_venda FLOAT NOT NULL,  
 status_venda VARCHAR(n) NOT NULL,  
 cod_produto INT NOT NULL,  
 pagamento_venda VARCHAR(n) NOT NULL,  
 id_cliente INT NOT NULL,  
 UNIQUE (id_venda,cod_produto: FK,id_cliente: FK)
); 

-- Tabela de pedidos dos fornecedores

CREATE TABLE Pedidos(Fornecedores) 
( 
 id_nota INT PRIMARY KEY AUTO_INCREMENT,  
 data_nota DATE NOT NULL,  
 valor_nota FLOAT NOT NULL,  
 status_nota VARCHAR(n) NOT NULL,  
 quantidade_produto_pedido INT NOT NULL,  
 nome_produto_pedido VARCHAR(n) NOT NULL,  
 id_fornecedor INT NOT NULL,  
 UNIQUE (id_fornecedor: FK)
); 

-- Tabela de fornecedores

CREATE TABLE Fornecedores 
( 
 id_fornecedor INT PRIMARY KEY NOT NULL AUTO_INCREMENT,  
 cnpj_fornecedor INT NOT NULL,  
 nome_fornecedor VARCHAR(n) NOT NULL,  
 telefone_fornecedor VARCHAR(n) NOT NULL,  
 endereco_fornecedor VARCHAR(n),  
 UNIQUE (id_fornecedor,cnpj_fornecedor,telefone_fornecedor)
); 

-- Tabela de cadastro de clientes

CREATE TABLE Cliente 
( 
 id_cliente INT PRIMARY KEY AUTO_INCREMENT,  
 nome_cliente VARCHAR(n) NOT NULL,  
 cpf_cliente VARCHAR(n) NOT NULL,  
 telefone_cliente VARCHAR(n) NOT NULL,  
 email_cliente VARCHAR(n) NOT NULL,  
 endereco_cliente VARCHAR(n),  
 veiculo_cliente VARCHAR(n),  
 nascimento_cliente DATE NOT NULL,  
 data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
 UNIQUE (cpf_cliente,telefone_cliente,email_cliente)
); 

ALTER TABLE Vendas ADD FOREIGN KEY(cod_produto) REFERENCES Produtos (cod_produto)
ALTER TABLE Vendas ADD FOREIGN KEY(id_cliente) REFERENCES Cadastro de Cliente (id_cliente)
ALTER TABLE Pedidos(Fornecedores) ADD FOREIGN KEY(id_fornecedor) REFERENCES Fornecedores (id_fornecedor)
