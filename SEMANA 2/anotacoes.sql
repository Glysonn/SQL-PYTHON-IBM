select names from "table" where names like 'G%'       
/* 
nesse exemplo, ele vai procurar na tabela todos o atributos da coluna nome que comecem com G. 
(o like procura padrões nas strings, e o % serve para preencher as letras que não são conhecidas).
O coringa(%) pode ser antes ou depois do argumento.
*/

select title, pages from book where pages between 290 and 300
/*
Nesse exemplo, ele vai procurar na tabela "book", todos os títulos que as páginas
são entre 290 e 300. Equivale a fazer um: pages>=290 and pages <=300
Compara dois números.
*/

select firstname, lastname, country from author where country IN ('AU', 'BR')
/* 
Tem o mesmo propósito que o de cima, mas serve para strings.
Equivale a:
select firstname, lastname, country from author where country='AU' OR country='BR
(NÃO FAZER ASSIM, mas usar para entender melhor)
*/


select title, pages from book order by title 
/*
Organiza em ordem alfabética.
Também podemos usar o order by 2 (2 é a ordem da coluna) para organizar, daí ao invés de title, seria o pages, que é a 2 coluna que está no select
*/

select distinct(country) from author
/*
Não mostra os resultados duplicados.
Exemplo: em uma lista de países com 20 autores, se pedisse pra imprimir a lista de paises, iriam ter resultados que apareceriam mais de uma vez.
Por exemplo, se existir 3 autores BR, o resultado "BR" iria aparecer 3x, mas com o distinct iria aparecer apenas uma vez. 

Se nós quisessemos saber quantos autores tem em cada países, nós usariamos o GROUP BY
*/
select country, count(country) as count from author group by country
/*
O count(country) retorna a quantidade que aquele país aparece (mesmo só mostrando 1x); E cria uma coluna sem nome;
O AS COUNT muda o nome da coluna que é o retorno de count(country);

Se nós qusiessemos saber quais países tem 4 ou mais autores, poderiamos usar a clause HAVING
*/
select country, count(country) as count from author group by country having count(country) > 4
/*
A clause HAVING só funciona com a clause GROUP BY.
A principal diferença entre HAVING e WHERE é que o WHERE é para um conjunto inteiro.
*/

