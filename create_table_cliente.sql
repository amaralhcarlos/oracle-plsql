CREATE TABLE
    cliente(
        id number(5),
        nome VARCHAR2(100),
        segmercado_id number(5),
        data_inclusao DATE,
        faturamento_previsto number(10, 2),
        categoria VARCHAR2(20)
    );

ALTER TABLE cliente
ADD CONSTRAINT pk_cliente_id PRIMARY key(id);

ALTER TABLE cliente
ADD
    CONSTRAINT fk_segmercado_id FOREIGN key(segmercado_id) REFERENCES segmercado(id);

DROP TABLE cliente;