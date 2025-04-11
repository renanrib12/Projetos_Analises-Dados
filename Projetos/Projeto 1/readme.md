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
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/total%20gorjeta.png" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem02.jpeg" width="40%"/>
</div>

&nbsp;

* Qual é a maior e a menor gorjeta registrada para cada dia de expediente? 

>Entre as gorjetas mais altas, sábado é o dia que conteve a maior gorjeta entre os outros. Porém também é o dia com a maior variação de gorjeta. Enquanto nas gorjetas mais baixas, sexta é o dia que conteve a menor gorjeta, assim como também a menor variação de gorjetas.
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/maior%20e%20menor.png" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem04.jpeg" width="40%"/>
</div>

&nbsp;

* Qual é a média de gorjetas por sexo? 

> Clientes homens costumam dar mais gorjeta que clientes mulheres, porém a variação é muito pequena, de aproximadamente $0,25.
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/media%20sex.png" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem06.jpeg" width="40%"/>
</div>

&nbsp;

* Grupos maiores dão mais gorjeta? 
>Sim. Há uma tendência de que quanto maior o grupo, maior a gorjeta, embora haja uma certa proximidade entre os grupos compostos por 4 e 5 pessoas.
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/size.png" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem08.jpeg" width="40%"/>
</div>

&nbsp;

* Qual dia da semana arrecada mais gorjeta? 

>Sábado é o dia que mais arrecada gorjetas, seguido de Domingo e Quinta-feira, respectivamente.
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/top3%20dias.png" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem10.jpeg" width="40%"/>
</div>

&nbsp;

* A média de gorjetas é maior por ser fumante?

>Há pouquissima variação entre a média de gorjeta de fumantes e não fumantes. Nesse caso, podemos considerar que as médias são aproximadamente iguais.
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/fumantes.png" width="60%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem12.jpeg" width="50%"/>
</div>

&nbsp;

* Tem correlação entre o valor total da conta e o valor da gorjeta? 

>De acordo com o coeficiente de correlação de Pearson, há uma leve correlação entre o total da conta e o valor de gorjeta pago por cliente.
&nbsp;

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/cpearson.png" width="70%"/>
</div>

<div align='center'>
<img src="https://github.com/renanrib12/Projetos_Analises-Dados/blob/main/Projetos/Projeto%201/imagens/imagem14.jpeg" width="40%"/>
</div>

&nbsp;

