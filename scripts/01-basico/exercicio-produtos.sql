CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    preco REAL
);

INSERT INTO produtos (nome, preco) VALUES
('Caneta', 2.50),
('Caderno', 15.90),
('Borracha', 1.75);