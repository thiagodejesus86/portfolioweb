
CREATE DATABASE `projeto1`;

CREATE TABLE `login` (
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user VARCHAR(155) NOT NULL UNIQUE,
	password VARCHAR(155) NOT NULL,
	status CHAR(1) DEFAULT 1,
	level CHAR(1) DEFAULT 1,
	dateStart DATETIME NOT NULL,
	id_perfil INT
)ENGINE=MyISAM, CHARSET=UTF8;

ALTER TABLE `login` ADD CONSTRAINT fk_login_perfil FOREIGN KEY (`id_perfil`) REFERENCES `perfil`(`id`);

CREATE TABLE `perfil`(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	firstName VARCHAR(100),
	lastName VARCHAR(255),
	doc VARCHAR(100),
	id_address INT
)ENGINE=MyISAM, CHARSET=UTF8;

ALTER TABLE `perfil` ADD CONSTRAINT fk_perfil_address FOREIGN KEY (`id_address`) REFERENCES `address`(`id`);

CREATE TABLE `address`(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	country VARCHAR(100),
	city VARCHAR(255),
	zipcode VARCHAR(100),
	street VARCHAR(100),
	numb VARCHAR(30),
	phone VARCHAR(50) 
)ENGINE=MyISAM, CHARSET=UTF8;