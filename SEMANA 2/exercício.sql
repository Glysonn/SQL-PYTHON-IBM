---Query 1: Recuperar todos os funcionários cujo endereço está em Elgin,IL.
SELECT F_NAME, L_NAME 
FROM employees 
WHERE ADDRESS LIKE "%Elgin,IL%";

---Query 2: Recupere todos os funcionários que nasceram durante a década de 1970.
SELECT F_NAME, L_NAME
FROM employees
WHERE B_DATE LIKE "197%";

---Query 3: Recupere todos os funcionários do departamento 5 cujo salário esteja entre 60.000 e 70.000
SELECT F_NAME, L_NAME FROM employees 
WHERE DEP_ID = 5 
AND (SALARY BETWEEN 60000 AND 70000);

---Query 4A: Recupere uma lista de funcionários ordenados por ID de departamento.
SELECT F_NAME, L_NAME, DEP_ID FROM employees 
ORDER BY DEP_ID;
/* Query 4B: Recupere uma lista de funcionários ordenados em ordem decrescente por
ID do departamento e dentro de cada departamento ordenados alfabeticamente em
ordem decrescente pelo sobrenome */
SELECT F_NAME, L_NAME, DEP_ID FROM employees 
ORDER BY DEP_ID DESC, L_NAME DESC;

---Query 5A: Para cada ID de departamento, recupere o número de funcionários no departamento.
SELECT DEP_ID, COUNT(*) 
FROM employees GROUP BY DEP_ID;
---Query 5B: Para cada departamento, recupere o número de funcionários no departamento e o salário médio dos funcionários no departamento.
SELECT DEP_ID, COUNT(*), AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEP_ID;
---Query 5C: Rotule as colunas computadas no conjunto de resultados da Consulta 5B como “NUM_EMPLOYEES” e “AVG_SALARY”.
SELECT DEP_ID, COUNT(*) AS 'NUM_EMPLOYEES', AVG(SALARY) AS 'AVG_SALARY'
FROM EMPLOYEES
GROUP BY DEP_ID;
---Query 5D: Na Query 5C, ordenar o resultado definido por Salário Médio.
SELECT DEP_ID, COUNT(*) AS 'NUM_EMPLOYEES', AVG(SALARY) AS 'AVG_SALARY'
FROM EMPLOYEES
GROUP BY DEP_ID ORDER BY AVG_SALARY;
---Query 5E: Em Query 5D limite o resultado a departamentos com menos de 4 funcionários.
SELECT DEP_ID, COUNT(*) AS 'NUM_EMPLOYEES', AVG(SALARY) AS 'AVG_SALARY'
FROM EMPLOYEES
GROUP BY DEP_ID HAVING (NUM_EMPLOYEES) < 4 ORDER BY AVG_SALARY;