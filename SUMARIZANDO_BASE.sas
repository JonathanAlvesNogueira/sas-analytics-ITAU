data BASE_ANALISE;
input 
      ID $
      Nome $
      Sobrenome $
      Idade 
      Cidade $ 
      Estado $ 
      Pais $ 
      Telefone $
      Email $ 
      DataNascimento mmddyy10.
      Sexo $ 
      SaldoConta 
      OutraColuna1 $ 
      OutraColuna2 
      CPF $ 
    ;
    format DataNascimento mmddyy10.;
  datalines;
1  Joao      Silva     25  Sao Paulo    SP  Brasil     1234567890  joao@email.com    01/15/1998  M  1500.25  Valor1 100.5  123.456.789-09
1   Joao      Silva     25  Sao Paulo    SP  Brasil     1234567890  joao@email.com    01/15/1998  M  1800.75  Valor2 150.7  123.456.789-09
1   Joao      Silva     25  Sao Paulo    SP  Brasil     1234567890  joao@email.com    01/15/1998  M  2000.00  Valor3 200.9  123.456.789-09
1   Joao      Silva     25  Sao Paulo    SP  Brasil     1234567890  joao@email.com    01/15/1998  M  1500.25  Valor1 100.5  123.456.789-09
2  Maria     Oliveira  30  Rio de Janeiro RJ  Brasil     9876543210  maria@email.com   04/22/1993  F  2000.75  Valor2 200.7  987.654.321-00
3   Pedro     Santos    28  Belo Horizonte MG  Brasil     4567890123  pedro@email.com   11/07/1994  M  1800.00  Valor3 300.9  456.789.012-34
4   Ana       Pereira   22  Brasilia     DF  Brasil     1112233445  ana@email.com     09/12/2000  F  1200.50  Valor4 150.2  111.223.344-55
5   Carlos    Lima      35  Salvador     BA  Brasil     5556667778  carlos@email.com  03/30/1988  M  2500.30  Valor5 180.3  555.666.777-66
21  Mariana   Rocha     28  Sao Luis     MA  Brasil     3334445550  mariana@email.com   04/17/1994  F  1800.75  Valor21 250.5  333.444.555-12
22  Luiz      Lima      31  Florianopolis SC  Brasil     7778889991  luiz@email.com      11/30/1990  M  2000.00  Valor22 300.8  777.888.999-23
23  Bruna     Costa     24  Maceio       AL  Brasil     1112223335  bruna@email.com     07/12/1998  F  1300.50  Valor23 150.3  111.222.333-34
24  Rafael    Santos    27  Aracaju      SE  Brasil     4445556668  rafael@email.com    02/25/1995  M  1700.25  Valor24 180.6  444.555.666-45
25  Leticia   Oliveira  29  Campinas     SP  Brasil     8889990003  leticia@email.com   08/08/1993  F  1900.00  Valor25 200.1  888.999.000-56
26  Gustavo   Silva     33  Joao Pessoa  PB  Brasil     5554443336  gustavo@email.com   01/23/1989  M  2100.75  Valor26 250.4  555.444.333-67
27  Vanessa   Lima      26  Goiania      GO  Brasil     9998887772  vanessa@email.com   06/06/1996  F  1400.50  Valor27 130.7  999.888.777-78
28  Felipe    Pereira   30  Belo Horizonte MG  Brasil     6667778884  felipe@email.com    10/19/1992  M  1600.25  Valor28 180.9  666.777.888-89
29  Patricia  Souza     28  Porto Alegre RS  Brasil     2223334449  patricia@email.com  03/04/1994  F  1800.75  Valor29 250.2  222.333.444-90
30  Igor      Santos    25  Natal        RN  Brasil     5556667771  igor@email.com      09/17/1998  M  1500.50  Valor30 150.5  555.666.777-01
31  Silvia    Oliveira  32  Recife       PE  Brasil     9990001110  silvia@email.com    01/30/1990  F  2200.00  Valor31 300.8  999.000.111-12
32  Anderson  Lima      29  Teresina     PI  Brasil     4445556664  anderson@email.com  07/15/1993  M  1900.50  Valor32 200.3  444.555.666-23
33  Vivian    Rocha     27  Porto Velho  RO  Brasil     8887776666  vivian@email.com    12/28/1995  F  2000.00  Valor33 180.6  888.777.666-34
34  Henrique  Souza     29  Macapa       AP  Brasil     5554443330  henrique@email.com  06/10/1993  M  1700.25  Valor34 150.9  555.444.333-45
35  Renata    Costa     26  Boa Vista    RR  Brasil     7778889994  renata@email.com    10/23/1996  F  1800.75  Valor35 250.2  777.888.999-56
36  Marcelo   Lima      30  Palmas       TO  Brasil     1112223337  marcelo@email.com   03/08/1992  M  1600.50  Valor36 200.5  111.222.333-67
;
run;

data BANCOS;
  input 
    NomeBanco $
    CategoriaProduto $
    CPF $
    TipoPessoa $
    ValorDevedor 
    PrazoParaFinalizar 
    OutraVariavel1 $
    OutraVariavel2 $
    OutraVariavel3 $
  ;
  datalines;
Banco1 CONSORCIO 123.456.789-09 PessoaFisica 1500.25 24 Variavel1A Variavel2A Variavel3A
Banco2 IMOB 987.654.321-00 PessoaJuridica 2000.75 36 Variavel1B Variavel2B Variavel3B
Banco3 CARTAO 456.789.012-34 PessoaFisica 1800.00 12 Variavel1C Variavel2C Variavel3C
Banco4 CAMBIO 111.223.344-55 PessoaJuridica 1200.50 18 Variavel1D Variavel2D Variavel3D
Banco5 LIS 555.666.777-66 PessoaFisica 2500.30 48 Variavel1E Variavel2E Variavel3E
Banco21 OUTROS 333.444.555-12 PessoaJuridica 1800.75 24 Variavel1F Variavel2F Variavel3F
Banco22 CONSORCIO 777.888.999-23 PessoaFisica 2000.00 36 Variavel1G Variavel2G Variavel3G
Banco23 IMOB 111.222.333-34 PessoaJuridica 1300.50 12 Variavel1H Variavel2H Variavel3H
Banco24 CARTAO 444.555.666-45 PessoaFisica 1700.25 18 Variavel1I Variavel2I Variavel3I
Banco25 CAMBIO 888.999.000-56 PessoaJuridica 1900.00 24 Variavel1J Variavel2J Variavel3J
Banco26 LIS 555.444.333-67 PessoaFisica 2100.75 36 Variavel1K Variavel2K Variavel3K
Banco27 OUTROS 999.888.777-78 PessoaJuridica 1400.50 12 Variavel1L Variavel2L Variavel3L
Banco28 CONSORCIO 666.777.888-89 PessoaFisica 1600.25 18 Variavel1M Variavel2M Variavel3M
Banco29 IMOB 222.333.444-90 PessoaJuridica 1800.75 24 Variavel1N Variavel2N Variavel3N
Banco30 CARTAO 555.666.777-01 PessoaFisica 1500.50 30 Variavel1O Variavel2O Variavel3O
Banco31 CAMBIO 999.000.111-12 PessoaJuridica 2200.00 36 Variavel1P Variavel2P Variavel3P
Banco32 LIS 444.555.666-23 PessoaFisica 1900.50 12 Variavel1Q Variavel2Q Variavel3Q
Banco33 OUTROS 888.777.666-34 PessoaJuridica 2000.00 18 Variavel1R Variavel2R Variavel3R
Banco34 CONSORCIO 555.444.333-45 PessoaFisica 1700.25 24 Variavel1S Variavel2S Variavel3S
Banco35 IMOB 777.888.999-56 PessoaJuridica 1800.75 30 Variavel1T Variavel2T Variavel3T
Banco36 CARTAO 111.222.333-67 PessoaFisica 1600.50 36 Variavel1U Variavel2U Variavel3U
SANTANDER CAMBIO 123.456.789-09 PessoaFisica 1500.25 24 Variavel1A Variavel2A Variavel3A
BRADESCO OUTROS 987.654.321-00 PessoaJuridica 2000.75 36 Variavel1B Variavel2B Variavel3B
NUBANK CONSORCIO 456.789.012-34 PessoaFisica 1800.00 12 Variavel1C Variavel2C Variavel3C
ITAU LIS 111.223.344-55 PessoaJuridica 1200.50 18 Variavel1D Variavel2D Variavel3D
BB CARTAO 555.666.777-66 PessoaFisica 2500.30 48 Variavel1E Variavel2E Variavel3E
CAIXA IMOB 333.444.555-12 PessoaJuridica 1800.75 24 Variavel1F Variavel2F Variavel3F
SICOOB CONSORCIO 777.888.999-23 PessoaFisica 2000.00 36 Variavel1G Variavel2G Variavel3G
HSBC OUTROS 111.222.333-34 PessoaJuridica 1300.50 12 Variavel1H Variavel2H Variavel3H
BRB CAMBIO 444.555.666-45 PessoaFisica 1700.25 18 Variavel1I Variavel2I Variavel3I
CITI CARTAO 888.999.000-56 PessoaJuridica 1900.00 24 Variavel1J Variavel2J Variavel3J
ORIGINAL LIS 555.444.333-67 PessoaFisica 2100.75 36 Variavel1K Variavel2K Variavel3K
BANRISUL IMOB 999.888.777-78 PessoaJuridica 1400.50 12 Variavel1L Variavel2L Variavel3L
BTG PACTUAL CONSORCIO 666.777.888-89 PessoaFisica 1600.25 18 Variavel1M Variavel2M Variavel3M
BRICS CAMBIO 222.333.444-90 PessoaJuridica 1800.75 24 Variavel1N Variavel2N Variavel3N
SOFISA LIS 555.666.777-01 PessoaFisica 1500.50 30 Variavel1O Variavel2O Variavel3O
SANTANDER OUTROS 999.000.111-12 PessoaJuridica 2200.00 36 Variavel1P Variavel2P Variavel3P
BRADESCO CONSORCIO 444.555.666-23 PessoaFisica 1900.50 12 Variavel1Q Variavel2Q Variavel3Q
NUBANK CAMBIO 888.777.666-34 PessoaJuridica 2000.00 18 Variavel1R Variavel2R Variavel3R
ITAU IMOB 555.444.333-45 PessoaFisica 1700.25 24 Variavel1S Variavel2S Variavel3S
BB CARTAO 777.888.999-56 PessoaJuridica 1800.75 30 Variavel1T Variavel2T Variavel3T
CAIXA LIS 111.222.333-67 PessoaFisica 1600.50 36 Variavel1U Variavel2U Variavel3U
SANTANDER CONSORCIO 123.456.789-09 PessoaFisica 1500.25 24 Variavel1V Variavel2V Variavel3V
BRADESCO CAMBIO 987.654.321-00 PessoaJuridica 2000.75 36 Variavel1W Variavel2W Variavel3W
ITAU OUTROS 456.789.012-34 PessoaFisica 1800.00 12 Variavel1X Variavel2X Variavel3X
BB LIS 111.223.344-55 PessoaJuridica 1200.50 18 Variavel1Y Variavel2Y Variavel3Y
CAIXA CARTAO 555.666.777-66 PessoaFisica 2500.30 48 Variavel1Z Variavel2Z Variavel3Z
SICOOB IMOB 333.444.555-12 PessoaJuridica 1800.75 24 Variavel1AA Variavel2AA Variavel3AA
HSBC CONSORCIO 777.888.999-23 PessoaFisica 2000.00 36 Variavel1AB Variavel2AB Variavel3AB
BRB OUTROS 111.222.333-34 PessoaJuridica 1300.50 12 Variavel1AC Variavel2AC Variavel3AC
CITI CAMBIO 444.555.666-45 PessoaFisica 1700.25 18 Variavel1AD Variavel2AD Variavel3AD

;
run;

/* TIRANDO DA VISÃO COTA PARA VISÃO CLIENTE, TIRANDO A REDUNDANCIA */

PROC SQL;
	CREATE TABLE VISAO_CLIENTE_MEU AS SELECT 
		NOME
		,CPF
		,SUM(saldoConta) AS saldoConta
		,sum( OutraColuna2) as conta
		,MAX(IDADE) AS maiorIdadeCliente
		,count(*) as qtd
	FROM BASE_ANALISE
	GROUP BY CPF
	;
QUIT;

PROC SQL;
	CREATE TABLE VISAO_CLIENTE_BANCO AS SELECT 
		CPF 
		,TIPOPESSOA
		,SUM(valorDevedor) as VL_EM_PRODUTOS
	FROM BANCOS
	GROUP BY CPF
			,TIPOPESSOA
;
QUIT;


PROC SQL;
	CREATE TABLE ENRIQUECENDO_BASE AS SELECT 
		A.*
		,B.*
	FROM VISAO_CLIENTE_MEU AS A 
	LEFT JOIN VISAO_CLIENTE_BANCO AS B ON A.CPF = B.CPF
	;
QUIT;