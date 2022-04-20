---Tarefa 0: solte a tabela INSTRUTOR a partir do banco de dados caso ela já exista, para que possamos começar do zero.
CREATE DATABASE semana1;

/* Tarefa 1: crie a table INSTRUTOR como definido acima. Defina o ins_id como a chave primária
e certifique-se de que o sobrenome e o nome não sejam nulos.*/
USE semana1;
CREATE TABLE INSTRUTOR (
    ins_id int PRIMARY KEY,
    lastname VARCHAR(255),
    firstname VARCHAR(255),
    city VARCHAR(35),
    country CHAR(2)
);

---Tarefa 2A: insira uma linha na tabela INSTRUTOR para o instrutor Rav Ahuja.
USE semana1;
INSERT INTO INSTRUTOR (ins_id, lastname, firstname, city, country)
VALUES (1, 'Ahuja', 'Rav', 'Toronto', 'CA')

---Tarefa 2B: insira duas linhas de uma vez na tabela INSTRUTOR para os instrutores Raul Chong e Hima Vasudevan.
INSERT INTO instrutor(ins_id, lastname, firstname, city, country)
VALUES
(2, 'Chong', 'Raul', 'Toronto','CA'),
(3,'Vasudevan','Hima','Chicago','US')
;

---Tarefa 3: selecione todas as linhas da tabela INSTRUTOR.
SELECT * FROM instrutor;