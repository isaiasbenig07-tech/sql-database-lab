-- ========================================================
-- Laboratório: Consultas e Funções SQL no Banco "world"
-- ========================================================

-- 1. Exibir bancos de dados disponíveis
SHOW DATABASES;

-- 2. Visualizar esquema e dados da tabela country
SELECT * FROM world.country;

-- 3. Utilização de Funções de Agregação
SELECT 
    SUM(Population) AS Populacao_Total, 
    AVG(Population) AS Media_Populacional, 
    MAX(Population) AS Maior_Populacao, 
    MIN(Population) AS Menor_Populacao, 
    COUNT(Population) AS Total_Registros 
FROM world.country;

-- 4. Divisão de Strings com SUBSTRING_INDEX (espaços)
SELECT Region, SUBSTRING_INDEX(Region, " ", 1) AS Primeira_Palavra 
FROM world.country;

-- 5. Filtragem condicional com SUBSTRING_INDEX na cláusula WHERE
SELECT Name, Region 
FROM world.country 
WHERE SUBSTRING_INDEX(Region, " ", 1) = "Southern";

-- 6. Limpeza e Contagem de Caracteres (LENGTH e TRIM)
SELECT Region 
FROM world.country 
WHERE LENGTH(TRIM(Region)) < 10;

-- 7. Remoção de duplicados com DISTINCT
SELECT DISTINCT(Region) 
FROM world.country 
WHERE LENGTH(TRIM(Region)) < 10;

-- ========================================================
-- DESAFIO: Divisão de Regiões com Barra (/)
-- ========================================================
SELECT 
    Name, 
    SUBSTRING_INDEX(Region, "/", 1) AS "Region Name 1",
    SUBSTRING_INDEX(Region, "/", -1) AS "Region Name 2" 
FROM world.country 
WHERE Region = "Micronesia/Caribbean";
