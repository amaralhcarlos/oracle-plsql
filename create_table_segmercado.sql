CREATE TABLE
    segmercado(
        id number(5),
        descricao VARCHAR2(100),
        PRIMARY key(id)
    );

--Criando a chave primária manualmente sem usar o comando PRIMARY KEY diretamente na tabela.
ALTER TABLE segmercado
ADD CONSTRAINT pk_segmercado_id PRIMARY key(id);

DROP TABLE segmercado;