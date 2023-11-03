DATA BASE_ANALISE_1 (KEEP= TEM CLUBES);
  SET WORK.TABELA_CLUBES;
  FORMAT TEM $30.;

  /* Use PRXMATCH para verificar se '-' está na variável CLUBE */
  match = prxmatch('/-/', CLUBES);

  IF match > 0 THEN
    TEM = 'SIM';
  ELSE
    TEM = 'NÃO';
RUN;