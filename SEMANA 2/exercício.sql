---Query 1: Recuperar todos os funcionários cujo endereço está em Elgin,IL.
SELECT F_NAME, L_NAME 
FROM employees 
WHERE ADDRESS LIKE "%Elgin,IL%"

