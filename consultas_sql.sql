
-- Consulta 1:

-- Selecionar as colunas Produto, Categoria e Total_Vendas dos dados df
SELECT Produto, Categoria, Total_Vendas FROM df

-- Ordernar a coluna Total de vendas em ordem descercente
ORDER BY Total_Vendas DESC

-- Consulta 2: 

-- Selecionar as colunas Produto, Mes e Total_Vendas dos dados df:
SELECT Produto, Mes, Total_Vendas FROM df

-- Filtrar o mes de junho:
WHERE Mes = '2023-06'

-- Ordenar a coluna Total_Vendas em ordem crescente:
ORDER BY Total_Vendas ASC
