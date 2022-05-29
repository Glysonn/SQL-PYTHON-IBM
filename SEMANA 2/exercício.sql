---Query 1: Recuperar todos os funcionários cujo endereço está em Elgin,IL.
SELECT F_NAME, L_NAME 
FROM employees 
WHERE ADDRESS LIKE "%Elgin,IL%"

---Query 2: Recupere todos os funcionários que nasceram durante a década de 1970.
SELECT F_NAME, L_NAME
FROM employees
WHERE B_DATE LIKE "197%"

---Query 3: Recupere todos os funcionários do departamento 5 cujo salário esteja entre 60.000 e 70.000
select F_NAME, L_NAME FROM employees 
WHERE DEP_ID = 5 
and (SALARY between 60000 and 70000);
