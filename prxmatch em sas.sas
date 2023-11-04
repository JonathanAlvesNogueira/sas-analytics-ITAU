
/**/
/*Identifique o clube que marcou a maior quantidade de gols ao longo de todos os anos.*/
/*Exemplo: "O clube 'Nome do Clube' marcou um total de X gols, o maior entre todos os clubes."*/

DATA ANALISE_1;
  SET WORK.TABELA_CLUBES;
 RUN;

/* COLOCA OS MAIORES EM PRIMEIRO*/
PROC SORT DATA=ANALISE_1 OUT=ANALISE_2;
	BY 'Pos.'n;
RUN;

/* ORDENA DE FORMA DESCENDENTE POR ANO OS MAIOREM EM POSIÇÃO*/
 PROC SORT DATA=ANALISE_2 OUT=ANALISE_3 NODUPKEY;
 	BY DESCENDING ANO;
RUN;



