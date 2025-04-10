## Introdução 

Este projeto visa explorar padrões e tendências nas gorjetas recebidas (Em dólar) por um restaurante, utilizando dados históricos para identificar fatores que influenciam o comportamento dos clientes. A análise foi realizada em SQL Server e busca responder questões como diferenças por gênero, dias da semana, hábito de fumar e tamanho do grupo, além de investigar a relação entre o valor total da conta e a gorjeta.

## Problema

Gorjetas são uma parte significativa da renda de profissionais de serviços, e entender como variáveis como perfil do cliente, horário e dia da semana impactam esses valores pode ajudar gestores a otimizar operações e melhorar a experiência dos clientes. Este projeto aborda as seguintes questões:

- Existem diferenças significativas nas gorjetas médias deixadas por homens e mulheres?
- Em quais dias da semana os clientes são mais generosos?
- Fumantes tendem a dar gorjetas proporcionalmente maiores?
- O horário (almoço vs. jantar) influencia o valor das gorjetas?
- Grupos maiores contribuem mais para o total de gorjetas?

## Conjunto de dados

A condução da análise foi realizada com [SQL Server](https://www.microsoft.com/pt-br/sql-server/sql-server-downloads), por uma [tabela](https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/Tabela.csv) exportada do Excel.

Os scripts de adaptação da tabela estão no arquivo [Adaptação.sql](https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/adapta%C3%A7%C3%A3o.sql).

## Dicionário de variáveis

O conjunto de dados contém **244 registros** com as seguintes colunas:

* **TOTAL_BILL**: Valor total da conta (em dólares).
* **TIP**: Valor da gorjeta (em dólares).
* **SEX**: Gênero do cliente que pagou a conta (Male/Female).
* **SMOKER**: Se o cliente é fumante (Yes/No).
* **DAY**: Dia da semana (Sun, Sat, Thur, Fri).
* **TIME**: Horário (Lunch/Dinner).
*  **SIZE**: Tamanho do grupo.

**Período de Coleta**: Dados históricos sem especificação de período, mas representativos de transações.

## Análises

Os scripts das análises podem ser acessados no arquivo [analise.sql](https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/analise.sql).

* Qual foi o total de gorjetas no período analisado? 

>O total de gorjetas foi de $731,58.
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem01.jpeg" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem02.jpeg" width="40%"/>
</div>

&nbsp;

* Qual é a maior e a menor gorjeta registrada para cada dia de expediente? 

&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem03.jpeg" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem04.jpeg" width="40%"/>
</div>

&nbsp;

* Qual é a média de gorjetas por sexo? 

&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem05.jpeg" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem06.jpeg" width="40%"/>
</div>

&nbsp;

* Grupos maiores dão mais gorjeta? 

&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem07.jpeg" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem08.jpeg" width="40%"/>
</div>

&nbsp;

* Qual dia da semana arrecada mais gorjeta? 

&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem09.jpeg" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem10.jpeg" width="40%"/>
</div>

&nbsp;

* A média de gorjetas é maior por ser fumante? 

&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem11.jpeg" width="40%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem12.jpeg" width="50%"/>
</div>

&nbsp;

* Tem correlação entre o valor total da conta e o valor da gorjeta? 

&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem13.jpeg" width="70%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem14.jpeg" width="40%"/>
</div>

&nbsp;

