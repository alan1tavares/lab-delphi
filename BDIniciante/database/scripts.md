# Scripts da criaçao do banco de dados

```sql
CREATE TABLE BD_TESTE (
    ID INTEGER NOT NULL,
    TEXTO VARCHAR(1000));

ALTER TABLE BD_TESTE
ADD CONSTRAINT PK_BD_TESTE
PRIMARY KEY (ID);

CREATE SEQUENCE GEN_BD_TESTE_ID;

SET TERM ^ ;

create trigger bd_teste_bi for bd_teste
active before insert position 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_bd_teste_id,1);
end^

SET TERM ; ^
```

## Teste

```sql
CREATE TABLE TABLE_DROP (
    ID INTEGER);

CREATE SEQUENCE GEN_TABLE_DROP_ID;

SET TERM ^ ;

create trigger table_drop_bi for table_drop
active before insert position 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_table_drop_id,1);
end^

SET TERM ; ^
```