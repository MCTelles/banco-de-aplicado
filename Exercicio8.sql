CREATE FUNCTION minhaFuncao1(VARCHAR, INT) RETURNS INT AS $$ DECLARE
param1 ALIAS FOR $1; param2 ALIAS
  FOR $2; BEGIN
  RETURN length(param1) + param2; 
END; $$ 
LANGUAGE plpgsql;

CREATE FUNCTION minhaFuncao2(param1 VARCHAR, param2 INT) RETURNS INT AS
$$
BEGIN
  RETURN length(param1) + param2; END; $$ 
LANGUAGE plpgsql;

CREATE FUNCTION minhaFuncao3(VARCHAR, INT) RETURNS INT AS $$ BEGIN
  RETURN length($1) + $2;
END; $$
LANGUAGE plpgsql;
