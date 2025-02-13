
-- Criar tabela (se não existir)
CREATE TABLE IF NOT EXISTS produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    preco DECIMAL(10,2)
);

-- Inserir dados (com tratamento de erro)
INSERT INTO produtos (nome, preco) VALUES
('Caneta', 2.50),
('Caderno', 15.90)
ON CONFLICT(nome) DO NOTHING;  # Evita duplicatas