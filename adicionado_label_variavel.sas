DATA TESTE_LABEL;
INPUT NOME $30.;
DATALINES;
JONATHAN
CLEBER
ANTONIO
PEDRO
;

RUN;


DATA TRATAMENTO_LABEL;
SET TESTE_LABEL;

LABEL NOME = 'ESSA VARIAVEL MOSTRA O NOME DO CLIENTE'; 


RUN;
