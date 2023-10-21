data DadosClientes;
input Nome $ IDCliente Telefone $;
datalines;
João 101 (123) 456-7890
Maria 102 (234) 567-8901
Carlos 103 (345) 678-9012
Ana 104 (456) 789-0123
Pedro 105 (567) 890-1234
Isabel 106 (678) 901-2345
Luis 107 (789) 012-3456
Sara 108 (890) 123-4567
Paulo 109 (901) 234-5678
Catarina 110 (012) 345-6789
;
RUN;

data Produtos;
input IDCliente Produto $;
datalines;
101 ProdutoA
102 ProdutoB
103 ProdutoC
104 ProdutoD
105 ProdutoE
106 ProdutoF
107 ProdutoG
108 ProdutoH
109 ProdutoI
;
RUN;

PROC SQL;
	CREATE TABLE INNERJOIN AS SELECT
		A.NOME
		,B.PRODUTO
	FROM dadosCLIENTES AS A INNER JOIN
	PRODUTOS AS B ON A.IDCLIENTE = B.IDCLIENTE;
QUIT;