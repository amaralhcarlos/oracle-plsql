CREATE OR REPLACE FUNCTION obter_categoria_cliente (
    p_faturamento cliente.faturamento_previsto%TYPE
) RETURN cliente.categoria%TYPE IS
    v_categoria cliente.categoria%TYPE;
BEGIN
    IF p_faturamento < 10000 THEN
        v_categoria := upper('Pequeno');
    ELSIF p_faturamento < 50000 THEN
        v_categoria := upper('Médio');
    ELSIF p_faturamento < 100000 THEN
        v_categoria := 'Grande';
    END IF;

    RETURN v_categoria;
END;