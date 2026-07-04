CREATE DATABASE controle_almoxarifado;
USE controle_almoxarifado;

CREATE TABLE entrada (
    id_entrada INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    id_categoria INT NOT NULL,
    nome VARCHAR(150) NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    qtd_estoque INT NOT NULL DEFAULT 0,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);


CREATE TABLE saida (
    id_saida INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    data_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);


INSERT INTO categoria (nome) VALUES 
('Detergentes e Sabões'),
('Desinfetantes'),
('Utensílios de Limpeza');


INSERT INTO produto (id_categoria, nome, preco_unitario, qtd_estoque) VALUES 
(1, 'Detergente Líquido 500ml', 2.50, 120),
(2, 'Desinfetante Lavanda 1L', 7.80, 45),
(3, 'Vassoura de Nylon', 15.90, 15);


INSERT INTO saida (id_produto, tipo, quantidade, data_registro) VALUES 
(1, 'E', 50, '2026-07-01 08:00:00'), 
(2, 'S', 5, '2026-07-02 14:30:00'),  
(3, 'E', 10, '2026-07-03 10:15:00');




 SELECT * FROM vw_estoque;
