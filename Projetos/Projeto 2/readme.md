## Introdução 



## Problema



## Conjunto de dados

A condução da análise foi realizada com [SQL Server](https://www.microsoft.com/pt-br/sql-server/sql-server-downloads), por uma [tabela]() exportada do Excel.

Os scripts de adaptação da tabela estão no arquivo [Adaptação.sql]().

## Dicionário de variáveis

**Tabela 1: events1**

* **user_id**: Identificador do usuário.
* **ga_session_id**: Identificador da sessão.
* **country**: País de origem do evento.
* **device**: Dispositivo usado no evento.
* **type**: Tipo de evento.
* **item_id**: Identificador do produto.
* **date**: Data e hora do evento.

**Tabela 2: users**

* **user_id**: Identificador do usuário.
* **ltv**: Lifetime Value.
* **date**: Data e hora da criação do usuário.

**Tabela 3: items**

* **item_id**: Identificador do produto.
* **name**: Nome do produto.
* **brand**: Marca do produto.
* **variant**: Varianção do produto.
* **category**: Categoria do produto.
* **price_in_usd**: Preço do produto em dólares americanos.

### Diagrama de Relacionamento de Entidades

&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/Diagrama.png" width="50%"/>
</div>

&nbsp;

## Análises

Os scripts das análises podem ser acessados no arquivo [analise.sql](https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/analise.sql).

* Quais são os produtos mais comprados?

>
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/top10%20produtos.png" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/imagem%201.jpeg" width="40%"/>
</div>

&nbsp;

* Qual categoria gera mais receita?

>
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/top3%20categorias.png" width="60%"/>
</div>

<div align='center'>

<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/imagem%202.jpeg" width="40%"/>
</div>

&nbsp;

* Quais dispositivos convertem mais compras?

>
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/dispositivos.png" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/imagem%203.jpeg" width="40%"/>
</div>

&nbsp;

* Quais são os maiores ticket médio por usuário?

>
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/top10%20users.png" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/imagem%204.jpeg" width="40%"/>
</div>

&nbsp;

* Quantos usuários nunca realizaram uma compra?
>
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/N%20comprantes.png" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/imagem%205.jpeg" width="40%"/>
</div>

&nbsp;

* Quantos produtos adicionados ao carrinho se convertem em venda?

>
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/conversao%20em%20compras.png" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%202/imagens/imagem%206.jpeg" width="40%"/>
</div>

&nbsp;

## Relatório


* **.**:

  - 

