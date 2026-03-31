--1)

CREATE TABLE pessoa (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    sobrenome VARCHAR(100),
    idade INTEGER,
    CONSTRAINT check_idade_positiva CHECK (idade >= 0)  -- check para a idade não ser menor que 0
);


SELECT * FROM pessoa;

--2)

ALTER TABLE pessoa
ADD CONSTRAINT restricao_identidade UNIQUE (id, nome, sobrenome); 


--3) 
ALTER TABLE pessoa
ALTER COLUMN idade INTEGER NOT NULL;


--4)
-- Tabela endereço
CREATE TABLE endereco (
    id INTEGER PRIMARY KEY,
    rua VARCHAR(255)
);

-- Ligação na tabela pessoa
ALTER TABLE pessoa
ADD id_endereco INTEGER;

-- Chave Estrangeira
ALTER TABLE pessoa
ADD CONSTRAINT fk_pessoa_endereco 
FOREIGN KEY (id_endereco) REFERENCES endereco(id);