CREATE TABLE DEPARTAMENTO
    (
    COD_DEPARTAMENTO INT NOT NULL,
    NOME VARCHAR(15)NOT NULL,
    MATRI_GERENTE INT,
    CONSTRAINT PK_DEP 
        PRIMARY KEY (COD_DEPARTAMENTO),
    CONSTRAINT FK_GERENTE 
        FOREIGN KEY (MATRI_GERENTE) REFERENCES EMPREGADO(MATRI)
    )