-- 1. CRIAÇÃO DO BANCO DE DADOS
-- CREATE DATABASE autopeca_db;
-- USE autopeca_db;

------------------------------------------
-- 2. CRIAÇÃO DAS TABELAS BÁSICAS (ENTIDADES)
------------------------------------------

-- Tabela de Clientes
CREATE TABLE CLIENTE (
    id_cliente INTEGER NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL,
    telefone_cliente VARCHAR(15) UNIQUE NOT NULL,
    email_cliente VARCHAR(100) UNIQUE,
    cpf_cliente VARCHAR(11) UNIQUE NOT NULL,
    endereco_cliente VARCHAR(100),
    veiculo_cliente VARCHAR(100),
    data_nascimento DATE NOT NULL,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id_cliente AUTOINCREMENT)
);

-- Tabela de Produtos
CREATE TABLE PRODUTO (
    id_produto INTEGER NOT NULL UNIQUE,
    cod_produto INTEGER NOT NULL UNIQUE,
    nome_produto VARCHAR(100) NOT NULL,
    quantidade_produto INT NOT NULL,
    preco_produto DECIMAL(10, 2) NOT NULL,
    status_produto VARCHAR(100) NOT NULL,
    obs_produto VARCHAR(100),
	PRIMARY KEY(cod_produto AUTOINCREMENT)
);

-- Tabela de Fornecedores
CREATE TABLE FORNECEDOR (
    id_fornecedor INTEGER NOT NULL UNIQUE,
    nome_fornecedor VARCHAR(100) NOT NULL,
    cnpj_fornecedor INTEGER UNIQUE NOT NULL,
    telefone_fornecedor VARCHAR(15) NOT NULL UNIQUE,
    endereco_fornecedor VARCHAR(100),
	PRIMARY KEY(cnpj_fornecedor AUTOINCREMENT)
);

-- Tabela de Pedidos (Fornecedores)
CREATE TABLE PEDIDOS_FORNECEDORES (
    id_nota INTEGER NOT NULL UNIQUE,
    cnpj_fornecedor INTEGER NOT NULL UNIQUE,
    nome_produto_pedido VARCHAR(100) NOT NULL,
    quantidade_produto_pedido INT NOT NULL DEFAULT 0,
    valor_nota DECIMAL(10, 2) NOT NULL,
    data_nota DATE NOT NULL,
    status_nota VARCHAR(100) NOT NULL,
	PRIMARY KEY(id_nota AUTOINCREMENT),
    FOREIGN KEY (cnpj_fornecedor) REFERENCES FORNECEDOR(cnpj_fornecedor)
);

-- Tabela de Vendas (Transação Única)
CREATE TABLE VENDAS (
    id_venda INTEGER NOT NULL UNIQUE,
    cod_produto VARCHAR(100) NOT NULL,
    cpf_cliente INTEGER NOT NULL,
    quantidade_produto_vendido INTEGER NOT NULL,
    valor_total_venda DECIMAL(10, 2) NOT NULL,
    data_venda DATETIME NOT NULL,
    forma_pagamento VARCHAR(50) NOT NULL,
    status_venda VARCHAR(50) NOT NULL, 
	PRIMARY KEY(id_venda AUTOINCREMENT),
    FOREIGN KEY (cpf_cliente) REFERENCES CLIENTE(cpf_cliente)
    FOREIGN KEY (cod_produto) REFERENCES PRODUTO(cod_produto)
);