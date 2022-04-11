CREATE OR REPLACE PROCEDURE formatar_cnpj (
    p_cnpj IN OUT cliente.cnpj%TYPE
) IS
BEGIN
    p_cnpj := substr(p_cnpj, 1, 2)
              || '/'
              || substr(p_cnpj, 3, 3);
END;