CREATE TABLE empregados(
  codigo serial,
  nome_emp text,
  salario int,
  departamento_cod int,
  PRIMARY KEY (codigo),
  FOREIGN KEY (departamento_cod) REFERENCES departamentos (id));

CREATE TABLE departamentos (id serial primary key, descricao varchar);


CREATE OR REPLACE FUNCTION codigo_empregado (valor INTEGER)
  RETURNS SETOF INTEGER AS $$
  DECLARE
  registro RECORD;
  retval INTEGER;
BEGIN
FOR registro IN SELECT * FROM empregados 
  WHERE salario >= $1 LOOP
RETURN NEXT registro. codigo;
END LOOP;
RETURN;
END;
$$ 
LANGUAGE 'plpgsql';
