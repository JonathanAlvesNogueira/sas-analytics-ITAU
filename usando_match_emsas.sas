DATA SeuDataSet;
INPUT Texto $30.;
DATALINES;
meu nome � EXEMPLO
ana
cleber
;
RUN;

data Exemplo;
    set SeuDataset; /* Substitua 'SeuDataset' pelo nome do seu conjunto de dados */

    /* Exemplo: Verificar se a vari�vel 'Texto' come�a com "exemplo" (insens�vel a mai�sculas e min�sculas) */
    if prxmatch('/exemplo/i', Texto) then
        Tipo_analise = "Exemplo";
    else
        Tipo_analise = "Representante";
run;
