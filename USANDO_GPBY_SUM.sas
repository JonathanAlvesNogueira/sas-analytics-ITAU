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




PROC SQL;
	CREATE TABLE TESTANDO_CALCULATED AS SELECT
		SUM(VENDAS) AS VENDAS 
		, SUM(VENDAS * 0.05) AS IMPOSTO
		,CONTINENTE
		,COUNT(*) AS QTD
	FROM VENDAS_CONTINENTE
	WHERE VENDAS > 1100
	GROUP BY CONTINENTE
	;
QUIT;
