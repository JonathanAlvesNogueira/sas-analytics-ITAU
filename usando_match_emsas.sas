DATA SeuDataSet;
INPUT Texto $30.;
DATALINES;
meu nome é EXEMPLO
ana
cleber
;
RUN;

data Exemplo;
    set SeuDataset; /* Substitua 'SeuDataset' pelo nome do seu conjunto de dados */

    /* Exemplo: Verificar se a variável 'Texto' começa com "exemplo" (insensível a maiúsculas e minúsculas) */
    if prxmatch('/exemplo/i', Texto) then
        Tipo_analise = "Exemplo";
    else
        Tipo_analise = "Representante";
run;
