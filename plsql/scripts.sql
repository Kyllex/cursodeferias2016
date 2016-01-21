CREATE TABLE time (
	  id_time NUMBER NOT NULL,
	  nome VARCHAR2(400)
	  );
	  
	CREATE TABLE jogador (
	  id_jogador NUMBER NOT NULL,
	  nome VARCHAR2(400) NOT NULL,
	  dt_nascimento DATE NOT NULL,
	  salario NUMBER(18,2),
	  id_time NUMBER NOT NULL
	  );
	  
	CREATE TABLE tecnico (
	  id_tecnico NUMBER NOT NULL,
	  nome VARCHAR2(400) NOT NULL,
	  dt_nascimento DATE NOT NULL,
	  salario NUMBER(18,2),
	  id_time NUMBER NOT NULL
	  );
	  
	ALTER TABLE time ADD CONSTRAINT pk_id_time PRIMARY KEY(id_time);
	ALTER TABLE jogador ADD CONSTRAINT pk_id_jogador PRIMARY KEY (id_jogador);
	ALTER TABLE tecnico ADD CONSTRAINT pk_id_tecnico PRIMARY KEY (id_tecnico);

	ALTER TABLE jogador ADD CONSTRAINT jogador_time_FK FOREIGN KEY (id_time) REFERENCES time(id_time);
	ALTER TABLE tecnico ADD CONSTRAINT fk_id_time FOREIGN KEY (id_time) REFERENCES time(id_time);

	COMMENT ON TABLE time IS '[CADASTRO] Tabela para armazenamento de times';
	COMMENT ON COLUMN time.id_time IS 'Código de indentificação do time';
	COMMENT ON COLUMN time.nome IS 'Nome do time';

	COMMENT ON TABLE jogador IS '[CADASTRO] Tabela para armazenamento de jogadores';
	COMMENT ON COLUMN jogador.id_time IS 'Código de indentificação do jogador';
	COMMENT ON COLUMN jogador.nome IS 'Nome do jogador';
	COMMENT ON COLUMN jogador.dt_nascimento IS 'Data de nascimento do jogador';
	COMMENT ON COLUMN jogador.salario IS 'Salário do jogador';
	COMMENT ON COLUMN jogador.id_time IS 'Chave estrangeira que linka jogador com o time';

	COMMENT ON TABLE tecnico IS '[CADASTRO] Tabela para armazenamento de técnicos';
	COMMENT ON COLUMN tecnico.id_time IS 'Código de indentificação do técnico';
	COMMENT ON COLUMN tecnico.nome IS 'Nome do técnico';
	COMMENT ON COLUMN tecnico.dt_nascimento IS 'Data de nascimento do técnico';
	COMMENT ON COLUMN tecnico.salario IS 'Salário do técnico';
	COMMENT ON COLUMN tecnico.id_time IS 'Chave estrangeira que linka técnico com o time';

	SELECT * FROM time;
	
	CREATE SEQUENCE seq_time
    MINVALUE 1
    MAXVALUE 999999999999999
    START WITH 1
    INCREMENT BY 1
  NOCACHE;
  
  CREATE SEQUENCE seq_jogador
    MINVALUE 1
    MAXVALUE 999999999999999
    START WITH 1
    INCREMENT BY 1
  NOCACHE;
  
  CREATE SEQUENCE seq_tecnico
    MINVALUE 1
    MAXVALUE 999999999999999
    START WITH 1
    INCREMENT BY 1
  NOCACHE;
  
  SELECT seq_time.NEXTVAL FROM dual;
  
  
  
  INSERT INTO time (id_time,nome) VALUES 
  (seq_time.NEXTVAL,'BARCELONA');
  INSERT INTO time (id_time,nome) VALUES 
  (seq_time.NEXTVAL,'REAL MADRID');
  
  INSERT INTO tecnico (id_tecnico, nome, dt_nascimento, salario, id_time) VALUES 
    (seq_tecnico.NEXTVAL, 'PARRERA','31/12/1980',10500.00,3);
  INSERT INTO tecnico (id_tecnico, nome, dt_nascimento, salario, id_time) VALUES 
    (seq_tecnico.NEXTVAL, 'DUNGA','31/12/1970',10500.00,4);
  
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Juninho Pernambucano', '25/01/1986',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Robinho', '25/01/1986',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Ronaldo', '15/10/1970',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Ronaldinho Gaucho', '25/01/1950',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Neymar', '25/01/1990',800000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Messi', '25/01/1950',8000000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Cristiano Ronaldo', '25/01/1986',8000000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Cafu', '25/01/1986',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Romário', '25/01/1986',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Roberto Carlos', '25/01/1986',80000.00,3);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Fred', '25/01/1986',80000.00,3);
    
  SELECT * FROM jogador WHERE id_time = 3;
  SELECT * FROM time;
  SELECT * FROM tecnico WHERE dt_nascimento < '19/01/1976';
  
   INSERT INTO time (id_time, nome) VALUES
 (seq_time.NEXTVAL, 'JUVENTUS');
 

 UPDATE jogador SET id_time = 5 WHERE id_time = 4;
 
 UPDATE jogador SET salario = salario*1.10 WHERE id_time = 5;
 UPDATE tecnico SET salario = salario*1.20;
 
 INSERT INTO time (id_time, nome) VALUES
 (seq_time.NEXTVAL, 'PSG');
 
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Fred', '25/01/1986',80000.00,6);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Fred', '25/01/1986',80000.00,6);
  INSERT INTO jogador (id_jogador, nome, dt_nascimento, salario, id_time) VALUES
    (seq_jogador.NEXTVAL, 'Fred', '25/01/1986',80000.00,6);
    
 UPDATE jogador SET salario = 180000.00 WHERE id_time = 6;
 
 DELETE jogador WHERE salario > 100000.00 AND id_time = 6;
 
 DELETE time WHERE id_time = 6;
 
  CREATE TABLE equipe (
    id_equipe NUMBER NOT NULL,
    nome VARCHAR2(400)
 );
 
  ALTER TABLE equipe ADD CONSTRAINT pk_id_equipe PRIMARY KEY (id_equipe);

  INSERT INTO EQUIPE (id_equipe, nome)
  SELECT id_time, nome FROM time;
  
  ALTER TABLE jogador DROP CONSTRAINT jogador_time_FK;
  ALTER TABLE tecnico DROP CONSTRAINT fk_id_time;
  
  ALTER TABLE time DROP CONSTRAINT pk_id_time;
    
  ALTER TABLE jogador RENAME COLUMN id_time TO id_equipe;
  ALTER TABLE tecnico RENAME COLUMN id_time TO id_equipe;
  
  ALTER TABLE jogador ADD CONSTRAINT jogador_equipe_FK FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe);
  ALTER TABLE tecnico ADD CONSTRAINT tecnico_equipe_FK FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe);
  
  DROP TABLE time;

 select equi.nome as descricao_equipe,
       tec.nome as nome_tecnico,
       jog.nome as nome_jogador
from equipes equi, tecnico tec, jogador jog
where equi.id_equipes = tec.id_equipes
and equi.id_equipes = jog.id_equipes

select equi.nome as descricao_equipe,
       tec.nome as nome_tecnico
from equipes equi, tecnico tec
where equi.id_equipes = tec.id_equipes (+)

select equi.nome as nome,
       jog.nome as jogador
from equipes equi, jogador jog
where equi.id_equipes = jog.id_equipes
order by nome asc

select count(*), equi.nome
from equipes equi,
     JOGADOR jog
where equi.id_equipes = jog.id_equipes
group by equi.nome

select equipe.id_equipe, sum(nvl(jogador.salario,0) + nvl(tecnico.salario,0))
from equipe,
     jogador,
     tecnico
where equipe.id_equipe = jogador.id_equipe(+)
and equipe.id_equipe = tecnico.ID_EQUIPE(+)
group by equipe.id_equipe

select equipe.id_equipe, avg(nvl(jogador.salario,0) + nvl(tecnico.salario,0))
from equipe,
     jogador,
     tecnico
where equipe.id_equipe = jogador.id_equipe(+)
and equipe.id_equipe = tecnico.ID_EQUIPE(+)
group by equipe.id_equipe

==================================================  BLOCO ANONIMO =====================================================

// materasystems/cursodeferias2016
declare
begin
  DBMS_OUTPUT.PUT_LINE('HELLO DBMS'); // null; if empty
end;

declare
vsEquipe VARCHAR2(400);
begin
 select nome into vsEquipe from equipe where id_equipe = 6;
 DBMS_OUTPUT.PUT_LINE(vsEquipe);
end;


