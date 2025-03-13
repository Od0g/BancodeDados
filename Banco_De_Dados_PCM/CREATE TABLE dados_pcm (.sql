CREATE TABLE dados_pcm (
    seq INT AUTO_INCREMENT PRIMARY KEY,
    os INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_final DATE,
    tipo VARCHAR(50) NOT NULL,
    maquina VARCHAR(100),
    descricao TEXT,
    setor VARCHAR(50),
    descricao_servico TEXT
);

LOAD DATA INFILE '/var/lib/mysql-files/DadosPcm.csv'
INTO TABLE dados_pcm
FIELDS TERMINATED BY ','  -- Ajuste se usar ";"
ENCLOSED BY '"'           -- Se houver campos entre aspas
LINES TERMINATED BY '\n'
IGNORE 1 ROWS             -- Ignora o cabeçalho
(os, data_inicio, data_final, tipo, maquina, descricao, setor, descricao_servico);