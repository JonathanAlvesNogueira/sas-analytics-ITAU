LIBNAME JONY '/home/u63480479/my_shared_file_links/u63480479';
%MACRO CRIARBASES(NUM);
    %DO I = &NUM. %TO 10;
        %LET NOME_TABELA = BASE&I;
        PROC SQL;
            CREATE TABLE &NOME_TABELA AS
            SELECT
                NOME
            FROM JONY.DADOS_PRONTOS
            ;
        QUIT;
    %END;
%MEND;

%CRIARBASES(NUM=1);


%MACRO FAZERBASES(NUM);
	%DO I = &NUM. %TO 10;
	%LET NOME_TABELA = teste&I;
		PROC SQL;
			CREATE TABLE &NOME_TABELA AS SELECT
				A.ID
				,A.NOME
				,B.PRODUTO
			FROM JONY.DADOS_PRONTOS AS A
			LEFT JOIN JONY.DADOS_COMBINADOS AS B ON A.ID = B.ID
		;
		QUIT;
	%END;
%MEND;


%FAZERBASES(NUM=1);

%MACRO BASES(NUM);
	%DO I=&NUM. %TO 20;
		%LET NOME_BASE = BASE_TESTE&I;
		PROC SQL;
			CREATE TABLE &NOME_BASE AS SELECT
				A.nome
				,B.produto
			FROM JONY.DADOS_PRONTOS AS A 
			LEFT JOIN JONY.DADOS_COMBINADOS AS B ON A.ID = B.ID
			;
		QUIT;
	%END;
%MEND;

%BASES(NUM=1);

DATA EMPILHA_TODOS;
SET WORK.BASE_TESTE:;
RUN;





















