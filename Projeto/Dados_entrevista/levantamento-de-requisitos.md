# Documentação do Projeto: Sistema de Gestão para uma Autopeças (Fase 1 - MVP)

## I. Detalhes do Projeto

| Detalhe | Valor |
| :--- | :--- |
| **Papel Assumido** | Analista de Sistemas |
| **Cliente** | Autopeças Tio Miro |
| **Fase do Projeto** | Mínimo Produto Viável (MVP) com Integridade de Dados |
| **Foco Principal** | Gestão Unificada de Clientes, Estoque/Vendas, Fornecedores e Relatórios. |

---

## II. Escopo e Requisitos

### Objetivo Principal

O objetivo desta fase é criar um sistema que unifique a gestão de estoque e a venda de produtos em uma **única transação** (nota fiscal), garantindo a precisão do estoque através de automação.

### Requisitos Funcionais (RF)

| ID | Requisito |
| :--- | :--- |
| **RF001** | Gerenciar o Cadastro de Clientes, incluindo dados específicos do mesmo(nome, CPF, número de telefone, email, endereço, data de nascimento e o modelo do carro que possui). |
| **RF002** | Gerenciar o Cadastro de Produtos e Fornecedores. |
| **RF003** | Registrar a Entrada de Estoque por meio de Compras e Fornecedores. |
| **RF004** | Gerar Relatórios básicos (Vendas Diárias e Serviços Mais Realizados). |

### Requisitos Não Funcionais (RNF)

| ID | Requisito |
| :--- | :--- |
| **RNF001** | **Integridade de Dados:** O banco de dados deve ser competenten para assegurar os dados inseridos. |
| **RNF002** | **Sistema eficiente:** O sistema deve ser eficiente e rápido, além de ser simples para facilitar sua utilização. |

---

## III. Modelo de Dados (Estrutura e Inteligência)

A estrutura do banco de dados relacional (autopeças\_DB) é composta por 5 tabelas.

### 1. Entidades Principais (Tabelas)

| Módulo | Entidades (Tabelas) | Objetivo |
| :--- | :--- | :--- |
| **Pessoas** | `CLIENTE` e `FORNECEDOR` | Cadastro de base de clientes e fornecedores. |
| **Logística** | `PRODUTO` | Gestão de itens vendáveis e entrada de estoque. |
| **Transação** | `VENDA` e `PEDIDO_FORNECEDOR` | Registro de vendas, mostrando um relatório do que foi vendido e pra quem foi vendido, e um relatório de um pedido feito à um fornecedor. |