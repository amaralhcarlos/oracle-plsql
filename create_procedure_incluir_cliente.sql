CREATE OR REPLACE PROCEDURE incluir_cliente (
    p_id            cliente.id%TYPE,
    p_segmercado_id cliente.segmercado_id%TYPE,
    p_nome          cliente.nome%TYPE,
    p_cnpj          cliente.cnpj%TYPE,
    p_faturamento   cliente.faturamento_previsto%TYPE
) IS

    v_categoria cliente.categoria%TYPE;
    v_cnpj      cliente.cnpj%TYPE := p_cnpj;
    e_null EXCEPTION;
    PRAGMA exception_init ( e_null, -1400 );
BEGIN
    v_categoria := obter_categoria_cliente(p_faturamento);
    formatar_cnpj(v_cnpj);
    INSERT INTO cliente (
        id,
        nome,
        segmercado_id,
        data_inclusao,
        faturamento_previsto,
        categoria,
        cnpj
    ) VALUES (
        p_id,
        p_nome,
        p_segmercado_id,
        sysdate,
        p_faturamento,
        v_categoria,
        v_cnpj
    );

    COMMIT;
END;