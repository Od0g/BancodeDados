-- init.sql
CREATE TABLE IF NOT EXISTS dados_pcm (
    seq SERIAL PRIMARY KEY,
    os INTEGER NOT NULL,          -- Correção aqui!
    data_inicio DATE NOT NULL,
    data_final DATE,
    tipo VARCHAR(50) NOT NULL,
    maquina VARCHAR(100),
    descricao TEXT,
    setor VARCHAR(50),
    descricao_servico TEXT
);

-- Importa o CSV (ajuste as colunas conforme o CSV)
COPY dados_pcm(os, data_inicio, data_final, tipo, maquina, descricao, setor, descricao_servico)
FROM '/docker-entrypoint-initdb.d/DadosPcm.csv'
DELIMITER ',' CSV HEADER;