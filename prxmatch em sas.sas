DATA BASE_ANALISE_1 (KEEP= TEM CLUBES);
  SET WORK.TABELA_CLUBES;
  FORMAT TEM $30.;

  /* Use PRXMATCH para verificar se '-' est� na vari�vel CLUBE */
  match = prxmatch('/-/', CLUBES);

  IF match > 0 THEN
    TEM = 'SIM';
  ELSE
    TEM = 'N�O';
RUN;