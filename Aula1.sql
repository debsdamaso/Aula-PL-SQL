/*
MEU PRIMEIRO PROGRAMA EM PL/SQL
*/

DECLARE

V1 NUMBER(10,2) := 125.52; 
--99999999,99  
--> Ou seja, vou ter 10 casas no total, sendo 8 antes e 2 depois da virgula
-- := é para atribuir valor para uma variavel
V_NOME VARCHAR2(100) := 'DIOGO';
V2 V1%TYPE := 245.20;  
--isso é herança para tipo, mas não herda valor. a gente atribuiu o valor 245.20
-- Para herdar o valor é:
V2 V1%TYPE := V1;

BEGIN --OBRIGATORIO

END; -- OBRIGATORIO
---------------------------------
CREATE TABLE ALUNO (
    RM NUMBER(10),
    NOME VARCHAR2(50),
    CONSTRAINT ALUNO_PK PRIMARY KEY(RM)
);

INSERT INTO ALUNO (RM, NOME) VALUES (111222333,'Antonio Alves');
INSERT INTO ALUNO (RM, NOME) VALUES (222333444,'Beatriz Bernandes');
INSERT INTO ALUNO (RM, NOME) VALUES (333444555,'Cláudio Cardoso');
-----------------------------------
SET SERVEROUTPUT ON;
DECLARE

V_ALUNO VARCHAR2(100);

BEGIN
    SELECT NOME
        INTO V_ALUNO
        FROM ALUNO
        WHERE RM = 111222333;
        
    DBMS_OUTPUT.PUT_LINE('O NOME DO ALUNO É '|| V_ALUNO); --PACOTE PARA SAÍDA
    -- APERTA SHIFT E BARRINHA DO LADO DO Z PARA FAZER ||, QUE É PARA CONCATENAR
    
END;
