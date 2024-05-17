/******************************ATIVIDADE 01*******************************/

create database db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	classeid BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
	descricao VARCHAR(255),
    PRIMARY KEY(classeid)
);

CREATE TABLE tb_personagem(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	perfil VARCHAR(255),
	pontos_ataque INT NOT NULL DEFAULT 0,
    pontos_defesa INT NOT NULL DEFAULT 0,
    classeid BIGINT,
    FOREIGN KEY (classeid) REFERENCES tb_classes(classeid),
    PRIMARY KEY(id)
);

INSERT INTO tb_classes (nome, descricao)
VALUES("Mago", "Ótimo com magia, causa danos em Paladinos e Elfos"),
("Paladinos", "Ótimo com espadas e artes marciais, causa danos em Magos e Ladrões"),
("Ladrões", "Sorrateiros e ágeis, causa danos em Paladinos e Elfos"),
("Elfos", "Ótimo com magia e ervas, causa danos em Magos e Ladrões"),
("Fadas", "Causa danos em todo mundo, porque o pirilimpin sempre vence e é invulnerável");

SELECT * FROM tb_classes;

INSERT INTO tb_personagem(nome, perfil, pontos_ataque, pontos_defesa, classeid)
VALUES("Safria","Grande maga do Norte", 1800, 1390, 1),
("Toadros","Paladino do Império de Konar", 2800, 2900, 2),
("Deonle","Ladra dos doze reinos", 1500, 1800, 3),
("Kafrina","Elfa Tahal dos bosques de Lizian", 4800, 5600, 4),
("Sun","Fadas dos Girassóis", 10800, 10000, 5),
("Flower","Fada da primavera", 11800, 15000, 5),
("Conrad","Paladino dos doze reinos", 50000, 15, 2),
("Crilía","Maga imperial do Konardis", 12800, 1399, 1);

SELECT * FROM tb_personagem;

UPDATE tb_personagem
SET pontos_defesa = 1700 WHERE id = 7;

SELECT * FROM tb_personagem WHERE pontos_ataque > 2000;
SELECT * FROM tb_personagem WHERE pontos_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE 'c%';

SELECT tb_personagem.nome, perfil, pontos_ataque, pontos_defesa, tb_classes.descricao
FROM tb_personagem INNER JOIN tb_classes
ON tb_personagem.classeid = tb_classes.classeid;

SELECT tb_classes.especie,tb_personagem.nome, perfil, pontos_ataque, pontos_defesa, tb_classes.descricao
FROM tb_personagem INNER JOIN tb_classes
ON tb_personagem.classeid = tb_classes.classeid;

SELECT tb_classes.especie,tb_personagem.nome, perfil, pontos_ataque, pontos_defesa, tb_classes.descricao
FROM tb_personagem INNER JOIN tb_classes
ON tb_personagem.classeid = tb_classes.classeid
WHERE tb_classes.especie = 'Fadas';

ALTER TABLE tb_classes CHANGE nome espécie VARCHAR(100) NOT NULL;
ALTER TABLE tb_classes CHANGE espécie especie VARCHAR(100) NOT NULL;

/******************************ATIVIDADE 02*******************************/
/******************************ATIVIDADE 03*******************************/
/******************************ATIVIDADE 04*******************************/
/******************************ATIVIDADE 05*******************************/
/******************************ATIVIDADE 06*******************************/