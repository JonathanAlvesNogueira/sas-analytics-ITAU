DATA TESTE;
INFILE C:\Users\joth1\Documents\SAS\sas-analytics-ITAU\datasets\Football Stadiums.csv
DLM =',';
RUN;

DATA TESTE;
INFILE 'C:\Users\joth1\Documents\SAS\sas-analytics-ITAU\datasets\Football Stadiums.csv'
DLM =',';
RUN;


DATA TESTE;
INPUT NOME $;
DATALINES;
JONATHAN
ALVES 
;
RUN;