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
| **RNF001** | **Integridade de Dados:** O banco de dados deve usar *CHECK Constraints* para garantir que preços e quantidades sejam sempre maiores que zero. |
| **RNF002** | **Automação de Estoque:** O estoque deve ser atualizado automaticamente usando *Triggers* (Gatilhos) na Entrada de Compras e na Baixa de Vendas. |

---

## III. Modelo de Dados (Estrutura e Inteligência)

A estrutura do banco de dados relacional (Autopeças\_DB) é composta por 5 tabelas.

### 1. Entidades Principais (Tabelas)

| Módulo | Entidades (Tabelas) | Objetivo |
| :--- | :--- | :--- |
| **Pessoas/Pets** | `CLIENTE`, `PET`, `FUNCIONARIO`, `FORNECEDOR` | Cadastro de base de clientes, animais, pessoal interno e fornecedores. |
| **Logística** | `PRODUTO`, `SERVICO`, `COMPRA`, `ITEM_COMPRA` | Gestão de itens vendáveis, precificação e entrada de estoque. |
| **Operação** | `AGENDAMENTO` | Rastreamento de serviços futuros e em andamento. |
| **Transação** | `VENDA`, `ITEM_VENDA_PRODUTO`, `ITEM_VENDA_SERVICO` | Registro da transação financeira e composição da nota fiscal única. |

### 2. Automações e Otimizações (Inteligência de BD)

| Objeto | Função | Descrição |
| :--- | :--- | :--- |
| **TRIGGER 1** | `trg_baixa_estoque_venda` | Reduz `estoque_atual` do `PRODUTO` sempre que um `ITEM_VENDA_PRODUTO` é inserido. |
| **TRIGGER 2** | `trg_entrada_estoque_compra` | Aumenta `estoque_atual` do `PRODUTO` sempre que um `ITEM_COMPRA` é inserido. |
| **CHECK** | `chk_preco_venda_positivo` | Garante que o `preco_venda` na tabela `PRODUTO` seja sempre maior que 0. |
| **CHECK** | `chk_quantidade_vendida_positiva` | Garante que a `quantidade` vendida seja sempre maior que 0. |
| **VIEW 1** | `VIEW_VENDAS_DIARIAS` | Agrega o total de vendas por data e forma de pagamento. |
| **VIEW 2** | `VIEW_SERVICOS_POPULARES` | Conta a frequência de cada `SERVICO` concluído (vendido). |

Loja de Auto Peças
Nome da empresa: Tio Miro Auto Peças
Integrantes do grupo: Tiago, Luigi, Leonardo, Marvyn, Luiz Felipe

Levantamento de Requisitos – Loja de Auto Peças Tio Miro

1 - Apresentação e coleta de dados: 


1. Descrição da empresa:
- A Tio Miro é uma loja de Auto Peças voltada para atender motoristas, mecânicos e oficinas locais. A empresa busca oferecer peças com preços acessíveis e atendimento rápido.


2. Público-alvo:
- Motoristas que precisam de peças de reposição.
- Mecânicos que necessitam de peças.
- Revendedores locais.


3. Objetivo do projeto:
Desenvolver um sistema que auxilie na gestão da loja, incluindo:
- Cadastro e controle de estoque de peças.
- Registro de vendas e orçamentos.
- Atendimento online para consultas e pedidos.
- Relatórios de desempenho e movimentação de estoque.


4. Requisitos funcionais:
- Permitir cadastro, edição e exclusão de peças no estoque.
- Registrar vendas e emitir comprovantes.
- Gerar relatórios de estoque e vendas.
- Disponibilizar catálogo de produtos para clientes.
- Permitir busca de peças por nome, código ou categoria.


5. Requisitos não funcionais:
- O sistema deve ser simples e de fácil utilização.
- Deve estar disponível via web, acessível em computadores e dispositivos móveis.
- Garantir a segurança dos dados cadastrados.
- Sistema com tempo de resposta rápido e eficiente.