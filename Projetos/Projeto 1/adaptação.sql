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
)