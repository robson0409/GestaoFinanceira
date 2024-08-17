/* Lógico_4: */

create database gestaofinanceira2;
use gestaofinanceira2;
drop database gestaofinanceira2;

CREATE TABLE financeiro (
    id int PRIMARY KEY auto_increment,
    descricao varchar (80) NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    data date NOT NULL,
    fk_categoria_id int
);

CREATE TABLE categoria (
    id int PRIMARY KEY auto_increment,
    nome varchar(80) NOT NULL,
    despesa tinyint(1)
);
 
ALTER TABLE financeiro ADD CONSTRAINT FK_financeiro_2
    FOREIGN KEY (fk_categoria_id)
    REFERENCES categoria (id)
    ON DELETE CASCADE;
    
    describe financeiro;
    INSERT into financeiro (descricao, valor, data, fk_categoria_id)
VALUES
    ('salario agosto', 1200.00, '2024-08-01',1),
    ('cartao nubank', 250.50, '2024-08-05',4),
    ('buffet casamento do José', 99.99, '2024-08-10',3),
    ('conta de agua mes agosto', 99.99, '2024-08-10', 2);
    
    describe categoria;
    insert into categoria(nome,despesa)values('soldo',0);
    insert into categoria(nome,despesa)values('fixas',1);
    insert into categoria(nome,despesa)values('buffet',0);
    insert into categoria(nome,despesa)values('cartao',1);
    
    select * from categoria;
    select * from financeiro;
    
    select 
        f.descricao,
        f.valor,
        f.data,
        c.nome
       
    from
    financeiro f
    
    join
    categoria c
    
    on  f.fk_categoria_id = c.id