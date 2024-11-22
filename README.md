# Teste_Analytics_SusanadeCarli
Teste para a vaga estágio em Analytics na Quod

# Parte 1 \- Programação em Python

## Bibliotecas:

* **pandas:** Manipulação de dataframes.  
* **numpy:** Realização de operações matemáticas e criação de dados aleatórios.  
* **faker:** Geração de dados fictícios (datas, nomes de produtos, etc.).  
* **random:** Seleção aleatória e manipulação básica de dados.  
* **datetime:** Manipulação de dados.  
* **matplotlib e seaborn:** Criação de gráficos e visualizações.

## 1 \- Limpeza e Análise de Dados de Vendas

* Inicializando o Faker:  
  * **Faker.seed(1)** e **random.seed(1)** garantem a reprodutibilidade dos dados gerados aleatoriamente  
* Função para gerar o dataset:  
  * Criei uma função que gera um dataset fictício (**gerar\_dados**) com n números de input (**num\_registros**). Nessa função, eu defini listas de produtos e categorias para associar valores aos registros, além de definir outras colunas: “ID”, “Data” (datas aleatórias de 2023), “Quantidade” e “Preco”. Em que a Quantidade e o Preco são valores aleatórios numéricos.   
    * “ID”: Cria uma sequência de identificadores únicos.  
    * “Data”: Gera datas aleatórias entre janeiro e dezembro de 2023\.  
    * “Produto e Categoria”: Atribui valores aleatórios das listas definidas.  
    * “Quantidade”: Gera números inteiros aleatórios entre 1 e 50\.  
    * “Preco”: Gera valores aleatórios entre 10 e 1000, com duas casas decimais.  
  * Depois, converti os dados para um DataFrame do pandas.  
* Utilizei a função **gerar\_dados** para gerar um dataset com 100 registros.  
* Converti a coluna “Data” para o formato de datetime.  
* Salvei o dataset limpo no formato csv com o nome **data\_clean.csv**.  
* Cálculos:  
  * Criei uma nova coluna “Total\_Vendas” (preço \* quantidade) e calculei o total de vendas para cada produto (**vendas\_por\_produto**).  
  * Identifiquei o produto com o maior número de vendas totais (**produto\_top\_vendas**).

## 2 \- Análise Exploratória de Dados de Vendas

* **df\['Mes'\] \= df\['Data'\].dt.to\_period('M').astype(str)** → Extrai o mês da coluna “Data” e mudei para string para que, depois, pudesse criar um gráfico.  
* **vendas\_mensais \= df.groupby('Mes')\['Total\_Vendas'\].sum().reset\_index()** → Agrupa os dados em relação ao “Mes” e soma o total de vendas.  
* Criei um gráfico e mês por total de vendas utilizando **matplotlib e seaborn.**  
* Insights/Padrões  
  * Identifiquei o mês com o pico de venda (**pido\_venda**)  
  * Calculei a média das vendas mensais (**media\_vendas\_mensais**) para identificar os meses com vendas acima da média(**meses\_acima\_media**).  
  * Calculei a quantidade total vendida para cada produto (**quantidade\_por\_produto)** e identifiquei o produto com a maior quantidade total vendida (**produto\_top\_quantidade**).

# Parte 2 \- SQL

## Biblioteca

* **pandasql**: Biblioteca que permite executar consultas SQL diretamente em DataFrames pandas.

## Parte 2

* **consulta \= lambda q: sqldf(q, globals()):** Função lambda que executa uma consulta SQL no DataFrame **df** usando a função **sqldf**  
* **query1**: Define a consulta SQL para selecionar as colunas **Produto**, **Categoria** e **Total\_Vendas** do **df** e ordenar os resultados por **Total\_Vendas** em ordem decrescente.  
* **query2**: Define a consulta para selecionar as colunas **Produto**, **Mes** e **Total\_Vendas** do **df**, filtrando os registros do mês de junho de 2023 e ordenando os resultados por **Total\_Vendas** em ordem crescente. Considerei as 3 menores vendas para demonstrar.  
* Define a **consultas\_sql** para salvar em um arquivo (**consultas\_sql.sql**).

