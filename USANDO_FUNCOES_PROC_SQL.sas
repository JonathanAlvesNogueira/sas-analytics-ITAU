data produto;
  input Nome_Produto $ Preco Fornecedor $ Ano QTD;
  datalines;
Laptop  1200 Dell  2021 2
Monitor 250  Samsung  2022 3
Smartphone  600  Apple  2023 4
Tablet  400  Samsung  2022 5
Impressora  150  HP  2021 6
C�mera  300  Canon  2023 7
Teclado  50  Logitech  2022 8
Mouse  20  Microsoft  2021 9
Fone de Ouvido  100  Sony  2023 10
Roteador  80  TP-Link  2022 11
Projetor  800  Epson  2022 2
Carregador  10  Belkin  2021 13
Impressora  200  Brother  2023 14 
M�quina de Lavar  600  LG  2022 15
Secadora  400  Whirlpool  2021 11 
Ar Condicionado  800  Mitsubishi  2023 10
M�quina de Caf�  150  Nespresso  2022 5
Micro-ondas  80  Panasonic  2023 10
Geladeira  700  Samsung  2022 1
Forno  300  GE  2021 9
;
run;


/* Consulta SQL para converter nomes em mai�sculas */
proc sql;
 CREATE TABLE NM_MAIUS as select 
	UPCASE(Nome_PRODUTO) as NM_PRODUTO
  from PRODUTO;
quit;



/* Consulta SQL para encontrar o sal�rio m�ximo */
proc sql;
  CREATE TABLE MAX_TABLE AS select 
	MAX(PRECO) as PRECO_Maximo
  from PRODUTO;
quit;


/* Consulta SQL para encontrar o sal�rio m�nimo */
proc sql;
  CREATE TABLE MIN_TABLE AS select 
	MIN(PRECO) as PREC_Minimo
  from PRODUTO;
quit;


/* Consulta SQL para calcular a soma dos sal�rios */
proc sql;
  CREATE TABLE SOMA AS select 
  	NOME_PRODUTO
	,FORNECEDOR
	,SUM(PRECO) as Soma_FORNE
	,COUNT(*) AS QTD
  from PRODUTO
  GROUP BY FORNECEDOR
  ;
quit;