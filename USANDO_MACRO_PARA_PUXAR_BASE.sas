LIBNAME JONY '/home/u63480479/my_shared_file_links/u63480479';
%MACRO CHAMABASE(BASE);
	DATA TESTE;
	SET JONY.&BASE.;
		NUM2 = ABS(NUM);
		NOME2 = SUBSTR(NOME, 2, 2);
	RUN;
%MEND;

%CHAMABASE(DADOS);