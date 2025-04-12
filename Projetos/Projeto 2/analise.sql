-- Identificando tabelas

SELECT TOP 10 * FROM DBO.events1;
SELECT TOP 10 * FROM DBO.items;
SELECT TOP 10 * FROM DBO.users;

-- Identificando linhas vazias e corrigindo. 

SELECT * FROM DBO.events1
WHERE [country] IN ('',' ')

update dbo.events1
SET [country] =
CASE
	WHEN [country] = '' THEN NULL
	ELSE [country]
END;

SELECT * FROM DBO.items
WHERE [variant] IN ('', ' ')

update dbo.items
SET [variant] =
CASE
	WHEN variant = '' THEN NULL
	ELSE variant
END;

-- Quais são os produtos mais comprados (TOP 10)?

SELECT TOP 10[name],
COUNT(*) AS total_compras
FROM dbo.events1
FULL JOIN dbo.items
ON dbo.events1.item_id = dbo.items.item_id
WHERE [type] in ('purchase')
GROUP BY [name]
ORDER BY total_compras DESC;

-- Qual categoria de produto gera mais receita (TOP 3)?

ALTER TABLE dbo.items
ALTER COLUMN price_in_usd FLOAT;

SELECT TOP 3 
	items.category,
	SUM(items.price_in_usd) AS receita_total
FROM dbo.events1
JOIN dbo.items
ON events1.item_id = items.item_id
WHERE events1.[type] IN ('purchase')
GROUP BY items.category
ORDER BY receita_total DESC;

-- Quais dispositivos (mobile, desktop) convertem mais em compras?

SELECT events1.device, COUNT (*) as total_compras
FROM dbo.events1
WHERE [type] IN ('purchase')
GROUP BY device
ORDER BY total_compras DESC;

-- Qual o ticket médio por usuário (média gasta por usuário, liste o TOP 10)?

SELECT TOP 10
	events1.user_id, 
	SUM(items.price_in_usd) / COUNT(DISTINCT events1.user_id) AS avgticket_user
FROM dbo.events1
JOIN dbo.items
ON events1.item_id = items.item_id
WHERE events1.[type] IN ('purchase')
GROUP BY events1.user_id
ORDER BY avgticket_user DESC;

-- Quantos usuários nunca fizeram nenhuma compra?

SELECT COUNT (*) AS usuarios_sem_compra
FROM dbo.users
LEFT JOIN dbo.events1
ON users.user_id = events1.user_id
WHERE users.user_id NOT IN (
SELECT DISTINCT user_id
FROM dbo.events1
WHERE type = 'purchase'
);

-- Quantos eventos "add_to_cart" se convertem em "purchase"?

SELECT
	COUNT(DISTINCT ad.ga_session_id) AS sessoes_add_to_cart,
	COUNT(DISTINCT pu.ga_session_id) AS sessoes_com_compra,
	COUNT(DISTINCT pu.ga_session_id) * 1.0 / COUNT(DISTINCT ad.ga_session_id) AS taxa_conversao
 FROM dbo.events1 ad
 LEFT JOIN dbo.events1 pu
	ON ad.ga_session_id = pu.ga_session_id
	AND pu.type ='purchase'
 WHERE ad.type = 'add_to_cart'


