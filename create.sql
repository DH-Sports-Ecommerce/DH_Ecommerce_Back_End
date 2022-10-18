CREATE DATABASE  IF NOT EXISTS `ecommerce`;
USE `ecommerce`;

# Table structure for table `category`
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


# Dumping data for table `category`
LOCK TABLES `category` WRITE;
INSERT INTO `category` 
	VALUES  (1,'Camiseta'),
			(2,'Bermuda'),
            (3,'Copo'),
            (4,'Brinde'),
            (5,'Adesivo'),
            (6,'Bermuda');
UNLOCK TABLES;


# Table structure for table `product`
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


# Dumping data for table `product`
LOCK TABLES `product` WRITE;
INSERT INTO `product` 
	VALUES  (11,'Nike','    Cor: Verde   |  Modelo: DH6452-390','https://imgnike-a.akamaihd.net/1300x1300/022589NX.jpg',499,'Manga Longa Brasil Strike Masculina'),
			(12,'Nike','Cor: Cinza | Modelo: DJ7682-078','https://imgnike-a.akamaihd.net/1300x1300/0226107T.jpg',399,'PSG II Torcedor Pro Masculina'),
            (13,'Nike','Cor: Laranja | Modelo: DN0694-845','https://imgnike-a.akamaihd.net/1300x1300/023138A1.jpg',378,'Holanda I Torcedor Pro Masculina'),
            (14,'Nike','Cor: Amarelo  |  Modelo: 0226390L','https://imgnike-a.akamaihd.net/1300x1300/0226390L.jpg',350,' Brasil I Supporter Masculina'),
            (15,'Nike','Cor: Verde | Modelo: DR6364-320','https://imgnike-a.akamaihd.net/1300x1300/023271NX.jpg',279,' Boston Celtics Masculina'),
            (16,'Nike','Cor: Roxo  | Modelo: DR6322-504','https://imgnike-a.akamaihd.net/1300x1300/022993ND.jpg',279,' Los Angeles Lakers Courtside Max 90 Masculina'),
            (17,'Nike','Cor: Azul  |  Modelo: DM1840-452','https://imgnike-a.akamaihd.net/1300x1300/01091215.jpg',99,'Barcelona Torcedor Masculina'),
            (18,'Nike','Cor: Cinza | Modelo: DM2185-060','https://imgnike-a.akamaihd.net/1300x1300/0223327T.jpg',229,' Corinthians II Torcedor Pro Infantil'),
            (19,'Nike','Cor: Azul | Modelo: DM9617-490','https://imgnike-a.akamaihd.net/1300x1300/02283515.jpg',299,'Brasil Pré-Jogo Infantil');
UNLOCK TABLES;


# Table structure for table `product_category`
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `FKkud35ls1d40wpjb5htpp14q4e` (`category_id`),
  CONSTRAINT `FK2k3smhbruedlcrvu6clued06x` 
		FOREIGN KEY (`product_id`) 
        REFERENCES `product` (`id`),
  CONSTRAINT `FKkud35ls1d40wpjb5htpp14q4e` 
		FOREIGN KEY (`category_id`) 
		REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


# Dumping data for table `product_category`
LOCK TABLES `product_category` WRITE;
INSERT INTO `product_category` 
	VALUES  (11,1),
			(12,1),
            (13,1),
            (14,1),
            (15,1),
            (16,1),
            (17,1),
            (18,1),
            (19,1);
UNLOCK TABLES;

-- create table category (id integer not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB;
-- create table product (id integer not null auto_increment, brand varchar(255), description varchar(255), image varchar(255), price double precision, title varchar(255), primary key (id)) engine=InnoDB;
-- create table product_category (product_id integer not null, category_id integer not null, primary key (product_id, category_id)) engine=InnoDB;
-- alter table product_category add constraint FKkud35ls1d40wpjb5htpp14q4e foreign key (category_id) references category (id);
-- alter table product_category add constraint FK2k3smhbruedlcrvu6clued06x foreign key (product_id) references product (id);
-- INSERT INTO category (name) VALUES ('Camiseta');
-- INSERT INTO product (title, description, brand, image, price) VALUES ('Produto teste', 'Descrição teste','Nike', 'https://imgnike-a.akamaihd.net/1300x1300/01091215.jpg', 99.90);
-- INSERT INTO product_category (product_id, category_id) VALUES (1, 1);