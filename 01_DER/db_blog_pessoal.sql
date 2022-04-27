CREATE DATABASE db_blog_pessoal;
USE db_blog_pessoal;

CREATE TABLE tb_usuarios (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  usuario VARCHAR(255) NOT NULL,
  senha VARCHAR(255) NOT NULL,
  foto VARCHAR(255) NULL,
  tipo VARCHAR(255) NULL,
  PRIMARY KEY (id)
);


CREATE TABLE tb_temas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE tb_postagens (
  id BIGINT NULL AUTO_INCREMENT,
  titulo VARCHAR(255) NOT NULL,
  texto VARCHAR(255) NOT NULL,
  dataPublicacao DATE NOT NULL,
  foto VARCHAR(255) NULL,
  tb_temas_id BIGINT NOT NULL,
  tb_usuarios_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (temas_id) REFERENCES tb_temas (id),
  FOREIGN KEY (usuarios_id) REFERENCES tb_usuarios (id)
);

