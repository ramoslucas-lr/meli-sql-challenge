# 🚀 Desafio de Banco de Dados - Mercado Livre 🛒

Este repositório contém os scripts SQL 📜 e o diagrama Entidade-Relacionamento (DER) 📊 para resolver o desafio proposto pelo Mercado Livre.

## 🎯 Descrição do Desafio

O objetivo deste desafio é projetar um modelo de dados (DER) 📐 e escrever consultas SQL 🔍 para responder a perguntas específicas de negócios em um contexto de e-commerce 🛍️. As entidades principais a serem consideradas são `Customer` 👥, `Order` 📦, `Item` 📦 e `Category` 🏷️.

### 💼 Necessidades do Negócio

* **Customer:** Representa usuários compradores e vendedores 🧑‍💼, com atributos como email 📧, nome 📝, endereço 🏠, etc.
* **Item:** Representa produtos publicados no marketplace 📦, com informações sobre estado e data de baixa 📅.
* **Category:** Descreve categorias de produtos 📂, incluindo o caminho completo da categoria (`category_path`).
* **Order:** Reflete as transações de compra no site 🛒.

### ❓ Perguntas a Responder

1.  Listar os usuários que fazem aniversário hoje 🎂 e cujas vendas em janeiro de 2020 foram superiores a 1500 📈.
2.  Para cada mês de 2020 🗓️, listar os 5 vendedores que mais venderam na categoria "Celulares" 📱, com detalhes sobre vendas e produtos vendidos 💰.
3.  Popular uma nova tabela com o preço e estado dos itens no final do dia ⏰, garantindo que o processo seja reprocessável 🔄.

## 📂 Estrutura do Repositório

* `create_tables.sql`: Script SQL 🛠️ para criar as tabelas no banco de dados PostgreSQL 🐘.
* `respuestas_negocio.sql`: Script SQL 📊 com as consultas para responder às perguntas do desafio 💡.
* `populate_database.sql`: Script SQL 📝 para popular as tabelas com dados de teste 🧪.
* `meli-sql-challenge-DER.drawio`: Arquivo do diagrama Entidade-Relacionamento (DER) 📐 no formato Draw.io 🖌️.
* `meli-sql-challenge-DER.png`: Imagem PNG 🖼️ do diagrama Entidade-Relacionamento (DER).
* `README.md`: Este arquivo 📖, com a descrição do projeto 📋.

## ⚙️ Como Usar

1.  **Pré-requisitos:**
    * PostgreSQL 🐘 instalado e configurado 🔧.
    * Draw.io 🖌️ (se desejar visualizar ou editar o DER 📐).

2.  **Criação do Banco de Dados e Tabelas:**
    * Execute o script `create_tables.sql` 🛠️ para criar as tabelas no PostgreSQL 🐘.

3.  **População do Banco de Dados:**
    * Execute o script `populate_database.sql` 📝 para inserir dados de teste 🧪.

4.  **Execução das Consultas:**
    * Execute o script `respuestas_negocio.sql` 📊 para obter os resultados das perguntas do desafio 💡.

## 📝 Descrição dos Arquivos

### `create_tables.sql`

Este script define as tabelas `users` 👥, `category` 📂, `item` 📦 e `orders` 📦, incluindo chaves primárias 🔑, chaves estrangeiras 🔗, índices 📊 e triggers ⏰ para manter a coluna `updated_at` atualizada 🔄.

### `respuestas_negocio.sql`

Este script contém três consultas SQL 📊 que respondem às perguntas do desafio 💡:

1.  **Pergunta 1:** Lista os aniversariantes do dia 🎂 com vendas superiores a 1500 📈 em janeiro de 2020 🗓️.
2.  **Pergunta 2:** Retorna o top 5 de vendedores por mês em 2020 🗓️ na categoria "Celulares" 📱.
3.  **Pergunta 3:** Cria um procedimento armazenado 📦 e uma nova tabela para o histórico de preços 💰.

### `populate_database.sql`

Este script insere dados de teste 🧪 nas tabelas para permitir a execução das consultas e a validação do modelo de dados 📊.

### `meli-sql-challenge-DER.drawio` e `meli-sql-challenge-DER.png`

Estes arquivos contêm o diagrama Entidade-Relacionamento (DER) 📐 que representa o modelo de dados do desafio 💡. O arquivo `.drawio` permite editar o diagrama 🖌️, enquanto o `.png` é uma imagem estática 🖼️.

## ℹ️ Observações

* As consultas foram escritas para o PostgreSQL 🐘.
* Os dados de teste 🧪 podem ser modificados para explorar diferentes cenários 📊.
* Os indices 📊 foram criados baseados nas colunas que possuem mais filtros 🔍, e nas foreign keys 🔗, das tabelas 📦.
