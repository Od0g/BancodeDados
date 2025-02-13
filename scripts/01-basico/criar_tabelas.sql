-- Criar tabela 'clientes'
CREATE TABLE clientes (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT UNIQUE
);

-- Inserir dados
INSERT INTO clientes (nome, email) VALUES
('Maria Silva', 'maria@email.com'),
('João Souza', 'joao@email.com');