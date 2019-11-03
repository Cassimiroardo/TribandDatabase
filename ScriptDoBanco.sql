DROP DATABASE triband;
CREATE DATABASE triband;
USE triband;

CREATE TABLE foto(

	id_foto BIGINT NOT NULL UNIQUE AUTO_INCREMENT,
    id_banda BIGINT,
    id_estudio BIGINT,
    path VARCHAR(300),
    
    PRIMARY KEY(id_foto)
);

CREATE TABLE banda(

    id_banda BIGINT NOT NULL UNIQUE AUTO_INCREMENT,
    email VARCHAR(50) UNIQUE ,
    id_foto BIGINT,
    integrantes INT,
    nome VARCHAR(50),
    senha VARCHAR(20),
    
    PRIMARY KEY(id_banda),
    FOREIGN KEY(id_foto) REFERENCES foto(id_foto) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE avaliacao_banda(

    id_avaliacao_banda BIGINT NOT NULL UNIQUE AUTO_INCREMENT,
    id_banda BIGINT NOT NULL,
    compromisso_horario INT,
    cuidado_equipamento INT,
    data_avaliacao_banda DATE,
    
    
    PRIMARY KEY(id_avaliacao_banda),
    FOREIGN KEY(id_banda) REFERENCES banda(id_banda) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE localizacao(

    id_localizacao BIGINT NOT NULL UNIQUE AUTO_INCREMENT,
	bairro varchar(20),
    cep BIGINT(8),
    cidade varchar(35),
    estado varchar(20),
    latitude DOUBLE,
    longitude DOUBLE,
    numero INT,
    rua VARCHAR(30),
    
	PRIMARY KEY(id_localizacao)
);


CREATE TABLE estudio(

    id_estudio BIGINT NOT NULL UNIQUE AUTO_INCREMENT,
	cnpj VARCHAR(20),
    email VARCHAR(50),
    id_foto BIGINT NOT NULL,
    id_localizacao BIGINT NOT NULL,
    nome VARCHAR(30),
    senha VARCHAR(15),
	preco DOUBLE NOT NULL,
    descricao VARCHAR(1000),

    
    PRIMARY KEY(id_estudio),
    FOREIGN KEY(id_foto) REFERENCES foto(id_foto) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(id_localizacao) REFERENCES localizacao(id_localizacao) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE avaliacao_estudio(

    id_avaliacao_estudio BIGINT NOT NULL UNIQUE AUTO_INCREMENT,
	id_estudio BIGINT NOT NULL,
    atendimento INT,
    compromisso_horario INT,
    limpeza INT,
    qualidade_equipamento INT,
    data_avaliacao_estudio DATE,
    
    PRIMARY KEY(id_avaliacao_estudio),
    FOREIGN KEY(id_estudio) REFERENCES estudio(id_estudio) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE servico(

	id_servico BIGINT NOT NULL UNIQUE AUTO_INCREMENT,
    descricao VARCHAR(1000),
    id_estudio BIGINT NOT NULL,
    
    PRIMARY KEY(id_servico),
    FOREIGN KEY(id_estudio) REFERENCES estudio(id_estudio) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE subservico(

    id_subservico BIGINT NOT NULL UNIQUE AUTO_INCREMENT,
    descricao VARCHAR(1000),
    id_servico BIGINT NOT NULL,
	
    PRIMARY KEY(id_subservico),
    FOREIGN KEY(id_servico) REFERENCES servico(id_servico) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE reserva(

    id_reserva BIGINT NOT NULL UNIQUE AUTO_INCREMENT,
    id_banda BIGINT NOT NULL,
    id_estudio BIGINT NOT NULL,
	data_reserva DATE,
    horario_final TIME,
    horario_inicio TIME,
    total_a_pagar DOUBLE NOT NULL,
    
    PRIMARY KEY(id_reserva),
    FOREIGN KEY(id_banda) REFERENCES banda(id_banda) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(id_estudio) REFERENCES estudio(id_estudio) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE chat(
    id_banda BIGINT NOT NULL,
    id_estudio BIGINT NOT NULL,
    id_chat BIGINT NOT NULL UNIQUE AUTO_INCREMENT,
    
    PRIMARY KEY(id_chat),
    FOREIGN KEY(id_banda) REFERENCES banda(id_banda) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(id_estudio) REFERENCES estudio(id_estudio) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE mensagem(
    id_mensagem BIGINT NOT NULL UNIQUE AUTO_INCREMENT,
    id_chat BIGINT NOT NULL,    
	horario TIME,
	conteudo VARCHAR(500),
    
    PRIMARY KEY(id_mensagem),
    FOREIGN KEY(id_chat) REFERENCES chat(id_chat) ON DELETE CASCADE ON UPDATE CASCADE
);



-- Chave estrangeira para tabela fotos

ALTER TABLE foto ADD FOREIGN KEY(id_banda) REFERENCES banda(id_banda) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE foto ADD FOREIGN KEY(id_estudio) REFERENCES estudio(id_estudio) ON UPDATE CASCADE ON DELETE CASCADE;
