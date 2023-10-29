data vendas_continente;
    input vendas continente $;
    datalines;
    1000 Asia
    2000 Africa
    1500 Europe
    3000 North America
    2500 South America
    1200 Oceania
    1800 Asia
    2200 Africa
    1700 Europe
    2800 North America
    2300 South America
    1100 Oceania
    ;
run;

DATA AJUSTE;
SET VENDAS_CONTINENTE;
	VALOR_VENDAS = VENDAS;
RUN;



%LET ANO = 202310;

DATA TESTE_&ANO;
SET WORK.TESTE_%ANO;
	TESTE = '&ANO';
RUN;