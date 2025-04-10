-- Verificando a tabela

SELECT * FROM DBO.tips

-- Convertendo tipos de dados

CREATE TABLE ACT_tips
(
TOTAL_BILL FLOAT,
TIP FLOAT,
SEX NVARCHAR(50),
SMOKER NVARCHAR(50),
[DAY] NVARCHAR(50),
[TIME] NVARCHAR(50),
SIZE INT
)


INSERT INTO ACT_tips
SELECT * FROM DBO.tips

-- Vericando tabela convertida

SELECT * FROM DBO.ACT_tips

-- Qual foi o total de gorjetas no período analisado?

SELECT SUM(TIP) AS total_tips FROM dbo.ACT_tips

-- Qual a maior e a menor gorjeta registrada para cada dia da semana?

SELECT MAX(TIP) AS highest_tip, MIN(TIP) as lowest_tip FROM dbo.ACT_tips

-- Qual é a média de gorjetas por sexo?

SELECT SEX, AVG(TIP) AS avg_tip FROM DBO.ACT_tips
GROUP BY SEX
ORDER BY avg_tip

-- Em quais dias da semana as gorjetas são mais altas?

SELECT TOP 3 [DAY], SUM(TIP) as sum_tip FROM DBO.ACT_tips
GROUP BY [DAY]
ORDER BY sum_tip DESC

-- Clientes fumantes deixam mais gorjetas?

 SELECT SMOKER, 
 AVG(TIP) AS avg_tip, 
 AVG(TIP / TOTAL_BILL) AS porcentage_avg --Porcentagem da gorgeta pelo valor pago na conta
FROM ACT_tips
GROUP BY SMOKER;

-- Tem correlação entre o valor total da conta e a gorjeta? (correlação de Pearson)

SELECT 
    (SUM(TOTAL_BILL * TIP) - (SUM(TOTAL_BILL) * SUM(TIP)) / COUNT(*))
    / (SQRT((SUM(TOTAL_BILL * TOTAL_BILL) - (SUM(TOTAL_BILL) * SUM(TOTAL_BILL)) / COUNT(*)) 
    * (SUM(TIP * TIP) - (SUM(TIP) * SUM(TIP)) / COUNT(*)))) AS c_pearson
FROM ACT_tips;   --(0,67 é uma leve correlação)

-- O horario da refeição influencia a gorjeta?

SELECT TIME, AVG(TIP) AS avg_tip, COUNT (*) AS total_customers
FROM ACT_tips
GROUP BY [TIME]

-- Grupos maiores deixam mais gorjeta?

SELECT SIZE, AVG(TIP) AS avg_tip, COUNT (*) AS groups_count
FROM ACT_tips
GROUP BY SIZE