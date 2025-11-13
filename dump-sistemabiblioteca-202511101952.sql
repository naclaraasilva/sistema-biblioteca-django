-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemabiblioteca
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-11-08 16:28:13.841939'),(2,'auth','0001_initial','2025-11-08 16:28:15.691836'),(3,'admin','0001_initial','2025-11-08 16:28:16.027933'),(4,'admin','0002_logentry_remove_auto_add','2025-11-08 16:28:16.044366'),(5,'admin','0003_logentry_add_action_flag_choices','2025-11-08 16:28:16.065300'),(6,'contenttypes','0002_remove_content_type_name','2025-11-08 16:28:16.356756'),(7,'auth','0002_alter_permission_name_max_length','2025-11-08 16:28:16.501438'),(8,'auth','0003_alter_user_email_max_length','2025-11-08 16:28:16.555907'),(9,'auth','0004_alter_user_username_opts','2025-11-08 16:28:16.595102'),(10,'auth','0005_alter_user_last_login_null','2025-11-08 16:28:16.850614'),(11,'auth','0006_require_contenttypes_0002','2025-11-08 16:28:16.858699'),(12,'auth','0007_alter_validators_add_error_messages','2025-11-08 16:28:16.874400'),(13,'auth','0008_alter_user_username_max_length','2025-11-08 16:28:17.030613'),(14,'auth','0009_alter_user_last_name_max_length','2025-11-08 16:28:17.227330'),(15,'auth','0010_alter_group_name_max_length','2025-11-08 16:28:17.273144'),(16,'auth','0011_update_proxy_permissions','2025-11-08 16:28:17.290005'),(17,'auth','0012_alter_user_first_name_max_length','2025-11-08 16:28:17.442351'),(18,'sessions','0001_initial','2025-11-08 16:28:17.550523');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('mur2yxh0gm6bg4ef3ao5iw2850m953j6','eyJ1c3VhcmlvIjp7ImlkIjoxMCwibm9tZSI6Ikdpb3ZhbmEiLCJlbWFpbCI6Imdpb3ZhbmFAZW1haWwuY29tIn19:1vIaF8:1MR03EGBRR65IX2DwexDaC6SXdUbX8-K78WnxHT4e0E','2025-11-24 22:20:10.262447');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprestimos`
--

DROP TABLE IF EXISTS `emprestimos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprestimos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_emprestimo` date NOT NULL,
  `data_devolucao` date DEFAULT NULL,
  `emprestimo_ativo` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'S',
  `id_usuario` int NOT NULL,
  `id_livro` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `emprestimos_usuarios_FK` (`id_usuario`),
  KEY `emprestimos_livros_FK` (`id_livro`),
  CONSTRAINT `emprestimos_livros_FK` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id`),
  CONSTRAINT `emprestimos_usuarios_FK` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimos`
--

LOCK TABLES `emprestimos` WRITE;
/*!40000 ALTER TABLE `emprestimos` DISABLE KEYS */;
INSERT INTO `emprestimos` VALUES (1,'2025-10-20','2025-10-30','N',1,1),(2,'2025-10-30','2025-11-03','N',1,4),(3,'2025-10-20','2025-11-04','N',1,6),(4,'2025-11-03','2025-11-04','N',3,6),(5,'2025-11-03','2025-11-06','S',8,6),(6,'2025-11-02','2025-11-10','S',10,8),(7,'2025-11-03','2025-11-10','S',9,9),(8,'2025-10-31',NULL,'N',10,9),(9,'2025-11-03','2025-11-10','S',11,13);
/*!40000 ALTER TABLE `emprestimos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_emprestimosBI` BEFORE INSERT ON `emprestimos` FOR EACH ROW begin
	DECLARE v_usuario_ativo CHAR(1);
    DECLARE v_livro_ativo CHAR(1);
    DECLARE v_qtd_disponivel INT;
	
	
	SELECT usuario_ativo
    INTO v_usuario_ativo
    FROM usuarios
    WHERE id = NEW.id_usuario;
    IF v_usuario_ativo IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Usuário informado não encontrado.';
    END IF;
    
    
        IF v_usuario_ativo = 'N' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Usuário informado está inativo.';
    END IF;
    
    
        SELECT livro_ativo, quant_disponivel
    INTO v_livro_ativo, v_qtd_disponivel
    FROM livros
    WHERE id = NEW.id_livro;
    IF v_livro_ativo IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Livro informado não existe.';
    END IF;
    
    
        IF v_livro_ativo = 'N' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Livro informado está inativo.';
    END IF;
    
    
        IF v_qtd_disponivel = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Livro sem exemplares disponíveis.';
    END IF;
    
    
    IF NEW.data_devolucao < NEW.data_emprestimo THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A data de devolução não pode ser anterior à data de empréstimo.';
    END IF;

    
    IF NEW.data_emprestimo > CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A data de empréstimo não pode ser uma data futura.';
    END IF;
    
    
    IF NEW.data_devolucao > CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A data de devolução não pode ser uma data futura.';
    END IF;
   end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_emprestimosAI` AFTER INSERT ON `emprestimos` FOR EACH ROW begin
    INSERT INTO log_geral (
        nome_tabela,
        id_tabela,
        acao,
        nome_responsavel
    )
    VALUES ('emprestimos', NEW.id, 'INSERT', USER());

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_emprestimosBU` BEFORE UPDATE ON `emprestimos` FOR EACH ROW BEGIN
		DECLARE v_usuario_ativo CHAR(1);
    DECLARE v_livro_ativo CHAR(1);
    DECLARE v_qtd_disponivel INT;
	
	
	SELECT usuario_ativo
    INTO v_usuario_ativo
    FROM usuarios
    WHERE id = NEW.id_usuario;
    IF v_usuario_ativo IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Usuário informado não encontrado.';
    END IF;
    
    
    
        SELECT livro_ativo, quant_disponivel
    INTO v_livro_ativo, v_qtd_disponivel
    FROM livros
    WHERE id = NEW.id_livro;
    IF v_livro_ativo IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Livro informado não existe.';
    END IF;
    
    
    
    
        IF v_qtd_disponivel = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Livro sem exemplares disponíveis.';
    END IF;
    
    
    IF NEW.data_devolucao < NEW.data_emprestimo THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A data de devolução não pode ser anterior à data de empréstimo.';
    END IF;

    
    IF NEW.data_emprestimo > CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A data de empréstimo não pode ser uma data futura.';
    END IF;
    
    
    IF NEW.data_devolucao > CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A data de devolução não pode ser uma data futura.';
    END IF;
   end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_emprestimosAU` AFTER UPDATE ON `emprestimos` FOR EACH ROW begin
	    
    IF (NEW.data_emprestimo <> OLD.data_emprestimo) THEN
        INSERT INTO log_geral (nome_tabela,
                               id_tabela,
                               campo_modificado,
                               acao,
                               valor_antigo,
                               valor_novo,
                               nome_responsavel)
        VALUES ('emprestimos', NEW.id, 'data_emprestimo', 'UPDATE',
                OLD.data_emprestimo, NEW.data_emprestimo, USER());
    END IF;

    
    IF (NEW.data_devolucao <> OLD.data_devolucao) THEN
        INSERT INTO log_geral (nome_tabela,
                               id_tabela,
                               campo_modificado,
                               acao,
                               valor_antigo,
                               valor_novo,
                               nome_responsavel)
        VALUES ('emprestimos', NEW.id, 'data_devolucao', 'UPDATE',
                OLD.data_devolucao, NEW.data_devolucao, USER());
    END IF;

    
    IF (NEW.emprestimo_ativo <> OLD.emprestimo_ativo) THEN
        INSERT INTO log_geral (nome_tabela,
                               id_tabela,
                               campo_modificado,
                               acao,
                               valor_antigo,
                               valor_novo,
                               nome_responsavel)
        VALUES ('emprestimos', NEW.id, 'emprestimo_ativo', 'DELETE',
                OLD.emprestimo_ativo, NEW.emprestimo_ativo, USER());
    END IF;

    
    IF (NEW.id_usuario <> OLD.id_usuario) THEN
        INSERT INTO log_geral (nome_tabela,
                               id_tabela,
                               campo_modificado,
                               acao,
                               valor_antigo,
                               valor_novo,
                               nome_responsavel)
        VALUES ('emprestimos', NEW.id, 'id_usuario', 'UPDATE',
                OLD.id_usuario, NEW.id_usuario, USER());
    END IF;

    
    IF (NEW.id_livro <> OLD.id_livro) THEN
        INSERT INTO log_geral (nome_tabela,
                               id_tabela,
                               campo_modificado,
                               acao,
                               valor_antigo,
                               valor_novo,
                               nome_responsavel)
        VALUES ('emprestimos', NEW.id, 'id_livro', 'UPDATE',
                OLD.id_livro, NEW.id_livro, USER());
    END IF;
 end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_emprestimosBD` BEFORE DELETE ON `emprestimos` FOR EACH ROW BEGIN
	SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Exclusão física não permitida. Use soft delete alterando status para Inativo.';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `autor` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantidade` int NOT NULL,
  `quant_disponivel` int NOT NULL,
  `categoria` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `livro_ativo` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'livro teste 1','fulano de tal',1,1,'romance','N'),(2,'livro teste 2','fulano de tal',1,0,'romance','N'),(3,'livro teste 3','fulano de tal',1,1,'romance','N'),(4,'Dom Casmurro','Machado de Assis',3,2,'Literatura Brasileira','N'),(6,'It, a Coisa','Stephen King',4,4,'Terror','S'),(7,'A Menina que Roubava Livros','Markus Zusak',10,10,'Romance','S'),(8,'Duna','Frank Herbert',3,3,'Ficção Científica','S'),(9,'A Hora da Estrela','Clarice Lispector',3,2,'Literatura Brasileira, Romance','S'),(10,'O Iluminado','Stephen King',4,4,'Suspense, Terror','N'),(11,'Ensaio Sobre a Cegueira','José Saramago',5,5,'Ficção, Romance','S'),(12,'As Intermitências da Morte','José Saramago',3,3,'Ficção, Romance','S'),(13,'À Espera de um Milagre','Stephen King',2,2,'Fantasia, Terror','S');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_livrosBI` BEFORE INSERT ON `livros` FOR EACH ROW BEGIN
    
    IF NEW.quantidade < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A quantidade do livro não pode ser negativa.';
    END IF;

    
    IF NEW.quant_disponivel < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A quantidade disponível não pode ser negativa.';
    END IF;

    
    IF NEW.quant_disponivel > NEW.quantidade THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A quantidade disponível não pode ser maior que a quantidade total.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_livrosAI` AFTER INSERT ON `livros` FOR EACH ROW BEGIN
    INSERT INTO log_geral (
        nome_tabela,
        id_tabela,
        acao,
        nome_responsavel
    )
    VALUES ('livros', NEW.id, 'INSERT', USER());

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_livrosBU` BEFORE UPDATE ON `livros` FOR EACH ROW BEGIN
    
    IF NEW.quantidade < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A quantidade do livro não pode ser negativa.';
    END IF;

    
    IF NEW.quant_disponivel < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A quantidade disponível não pode ser negativa.';
    END IF;

    
    IF NEW.quant_disponivel > NEW.quantidade THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A quantidade disponível não pode ser maior que a quantidade total.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_livrosAU` AFTER UPDATE ON `livros` FOR EACH ROW BEGIN
		 IF (new.titulo <> old.titulo) THEN
		INSERT INTO log_geral (nome_tabela,
							   id_tabela,
                               campo_modificado,
							   acao,
							   valor_antigo,
							   valor_novo,
							   nome_responsavel)
			VALUES ('livros', new.id,'titulo','UPDATE',
					old.titulo, new.titulo, user());
 			END IF;
	
			
			 IF (new.autor <> old.autor) THEN
		INSERT INTO log_geral (nome_tabela,
							   id_tabela,
                               campo_modificado,
							   acao,
							   valor_antigo,
							   valor_novo,
							   nome_responsavel)
			VALUES ('livros', new.id,'autor','UPDATE',
					old.autor, new.autor, user());
 			END IF;
			
			
					 IF (new.quantidade <> old.quantidade) THEN
		INSERT INTO log_geral (nome_tabela,
							   id_tabela,
                               campo_modificado,
							   acao,
							   valor_antigo,
							   valor_novo,
							   nome_responsavel)
			VALUES ('livros', new.id,'quantidade','UPDATE',
					old.quantidade, new.quantidade, user());
			 END IF;
			
		
					 IF (new.categoria <> old.categoria) THEN
		INSERT INTO log_geral (nome_tabela,
							   id_tabela,
                               campo_modificado,
							   acao,
							   valor_antigo,
							   valor_novo,
							   nome_responsavel)
			VALUES ('livros', new.id,'categoria','UPDATE',
					old.categoria, new.categoria, user());
		 END IF;
		
		
		 IF (new.livro_ativo <> old.livro_ativo) THEN
		INSERT INTO log_geral (nome_tabela,
							   id_tabela,
                               campo_modificado,
							   acao,
							   valor_antigo,
							   valor_novo,
							   nome_responsavel)
			VALUES ('livros', new.id,'livro_ativo','DELETE',
					old.livro_ativo, new.livro_ativo, user());
		 END IF;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_livrosBD` BEFORE DELETE ON `livros` FOR EACH ROW BEGIN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Exclusão física não permitida. Use soft delete alterando status para ativo = N.';
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `log_geral`
--

DROP TABLE IF EXISTS `log_geral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_geral` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tabela` int NOT NULL,
  `nome_tabela` varchar(15) NOT NULL,
  `acao` varchar(10) NOT NULL,
  `valor_antigo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `valor_novo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nome_responsavel` varchar(100) NOT NULL,
  `campo_modificado` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_geral`
--

LOCK TABLES `log_geral` WRITE;
/*!40000 ALTER TABLE `log_geral` DISABLE KEYS */;
INSERT INTO `log_geral` VALUES (1,1,'livros','DELETE','S','N','2025-11-03 18:28:28','root@localhost','livro_ativo'),(2,2,'livros','DELETE','S','N','2025-11-03 18:37:21','root@localhost','livro_ativo'),(3,4,'livros','UPDATE','2','3','2025-11-03 19:36:33','root@localhost','quantidade'),(4,6,'livros','INSERT',NULL,NULL,'2025-11-04 18:16:14','root@localhost',NULL),(5,4,'livros','DELETE','S','N','2025-11-04 18:22:46','root@localhost','livro_ativo'),(6,3,'emprestimos','DELETE','S','N','2025-11-04 18:42:24','root@localhost','emprestimo_ativo'),(7,7,'livros','INSERT',NULL,NULL,'2025-11-04 19:46:59','root@localhost',NULL),(8,7,'livros','INSERT',NULL,NULL,'2025-11-04 19:46:59','giovana',NULL),(9,4,'emprestimos','INSERT',NULL,NULL,'2025-11-04 22:26:27','root@localhost',NULL),(10,4,'emprestimos','INSERT',NULL,NULL,'2025-11-04 22:26:27','giovana',NULL),(11,3,'emprestimos','UPDATE','2025-10-30','2025-11-04','2025-11-04 22:37:42','root@localhost','data_devolucao'),(12,3,'emprestimos','UPDATE',NULL,'Devolvido em 2025-11-04','2025-11-04 22:37:42','root@localhost','data_devolucao'),(13,5,'emprestimos','INSERT',NULL,NULL,'2025-11-04 22:40:58','root@localhost',NULL),(14,5,'emprestimos','INSERT',NULL,NULL,'2025-11-04 22:40:58','giovana',NULL),(15,5,'emprestimos','UPDATE',NULL,'2025-11-04','2025-11-04 22:41:11','root@localhost','data_devolucao'),(16,6,'livros','UPDATE','2','4','2025-11-04 23:06:07','root@localhost','quantidade'),(17,6,'livros','UPDATE','Terror','Romance','2025-11-04 23:06:07','root@localhost','categoria'),(18,6,'livros','UPDATE','Romance','Terror','2025-11-04 23:06:32','root@localhost','categoria'),(19,8,'livros','INSERT',NULL,NULL,'2025-11-05 17:08:39','root@localhost',NULL),(20,8,'livros','INSERT',NULL,NULL,'2025-11-05 17:08:39','giovana',NULL),(21,4,'usuarios','INSERT',NULL,NULL,'2025-11-05 17:30:13','admin',NULL),(22,6,'usuarios','INSERT',NULL,NULL,'2025-11-05 17:34:22','admin',NULL),(23,8,'usuarios','INSERT',NULL,NULL,'2025-11-05 17:38:46','admin',NULL),(24,6,'usuarios','DELETE','S','N','2025-11-05 17:39:12','admin','usuario_ativo'),(25,9,'usuarios','INSERT',NULL,NULL,'2025-11-10 17:39:49','Julia',NULL),(26,10,'usuarios','INSERT',NULL,NULL,'2025-11-10 17:40:35','Giovana',NULL),(27,1,'emprestimos','DELETE','S','N','2025-11-10 18:12:43','root@localhost','emprestimo_ativo'),(28,6,'emprestimos','INSERT',NULL,NULL,'2025-11-10 18:13:16','root@localhost',NULL),(29,6,'emprestimos','INSERT',NULL,NULL,'2025-11-10 18:13:16','Administrador',NULL),(30,6,'emprestimos','UPDATE',NULL,'2025-11-10','2025-11-10 18:19:48','Administrador','data_devolucao'),(31,2,'emprestimos','DELETE','S','N','2025-11-10 18:19:57','root@localhost','emprestimo_ativo'),(32,9,'livros','INSERT',NULL,NULL,'2025-11-10 18:21:37','root@localhost',NULL),(33,9,'livros','INSERT',NULL,NULL,'2025-11-10 18:21:37','Giovana',NULL),(34,7,'emprestimos','INSERT',NULL,NULL,'2025-11-10 18:32:46','root@localhost',NULL),(35,7,'emprestimos','INSERT',NULL,NULL,'2025-11-10 18:32:46','Administrador',NULL),(36,5,'emprestimos','UPDATE','3','8','2025-11-10 18:44:55','root@localhost','id_usuario'),(37,5,'emprestimos','UPDATE','3','8','2025-11-10 18:44:55','Administrador','id_usuario'),(38,5,'emprestimos','UPDATE','2025-11-04','2025-11-05','2025-11-10 18:59:29','root@localhost','data_devolucao'),(39,5,'emprestimos','UPDATE','2025-11-04','2025-11-05','2025-11-10 18:59:29','Administrador','data_devolucao'),(40,5,'emprestimos','UPDATE','2025-11-05','2025-11-06','2025-11-10 19:00:54','root@localhost','data_devolucao'),(41,5,'emprestimos','UPDATE','2025-11-05','2025-11-06','2025-11-10 19:00:54','Administrador','data_devolucao'),(42,8,'emprestimos','INSERT',NULL,NULL,'2025-11-10 19:03:36','root@localhost',NULL),(43,8,'emprestimos','INSERT',NULL,NULL,'2025-11-10 19:03:36','Administrador',NULL),(44,8,'emprestimos','DELETE','S','N','2025-11-10 19:03:40','root@localhost','emprestimo_ativo'),(45,10,'livros','INSERT',NULL,NULL,'2025-11-10 19:10:51','root@localhost',NULL),(46,10,'livros','INSERT',NULL,NULL,'2025-11-10 19:10:51','Giovana',NULL),(47,10,'livros','UPDATE','Terror, Suspense','Suspense, Terror','2025-11-10 19:14:12','root@localhost','categoria'),(48,10,'livros','UPDATE','Suspense, Terror','Terror, Suspense','2025-11-10 19:16:20','root@localhost','categoria'),(49,10,'livros','UPDATE','Terror, Suspense','Suspense, Terror','2025-11-10 19:19:26','root@localhost','categoria'),(50,11,'livros','INSERT',NULL,NULL,'2025-11-10 19:22:08','root@localhost',NULL),(51,11,'livros','INSERT',NULL,NULL,'2025-11-10 19:22:08','Giovana',NULL),(52,10,'livros','UPDATE','Suspense, Terror','Terror, Suspense','2025-11-10 19:22:59','root@localhost','categoria'),(53,12,'livros','INSERT',NULL,NULL,'2025-11-10 19:24:47','root@localhost',NULL),(54,12,'livros','INSERT',NULL,NULL,'2025-11-10 19:24:47','Giovana',NULL),(55,10,'livros','UPDATE','Terror, Suspense','Suspense, Terror','2025-11-10 19:27:14','root@localhost','categoria'),(56,10,'livros','UPDATE','Suspense, Terror','Terror, Suspense','2025-11-10 19:35:46','root@localhost','categoria'),(57,10,'livros','UPDATE','Terror, Suspense','Suspense, Terror','2025-11-10 19:38:19','root@localhost','categoria'),(58,13,'livros','INSERT',NULL,NULL,'2025-11-10 19:40:20','root@localhost',NULL),(59,13,'livros','INSERT',NULL,NULL,'2025-11-10 19:40:20','Giovana',NULL),(60,11,'usuarios','INSERT',NULL,NULL,'2025-11-10 19:50:58','Ana Clara',NULL),(61,9,'livros','UPDATE','Literatura Brasileira','Literatura Brasileira, Romance','2025-11-10 22:20:31','root@localhost','categoria'),(62,10,'livros','DELETE','S','N','2025-11-10 22:20:38','root@localhost','livro_ativo'),(63,9,'emprestimos','INSERT',NULL,NULL,'2025-11-10 22:21:11','root@localhost',NULL),(64,9,'emprestimos','INSERT',NULL,NULL,'2025-11-10 22:21:11','Administrador',NULL),(65,9,'emprestimos','UPDATE',NULL,'2025-11-10','2025-11-10 22:21:15','Administrador','data_devolucao'),(66,9,'emprestimos','UPDATE','11','13','2025-11-10 22:22:36','root@localhost','id_livro'),(67,9,'emprestimos','UPDATE','11','13','2025-11-10 22:22:36','Administrador','id_livro'),(68,4,'emprestimos','DELETE','S','N','2025-11-10 22:22:46','root@localhost','emprestimo_ativo'),(69,7,'emprestimos','UPDATE',NULL,'2025-11-10','2025-11-10 22:46:57','Administrador','data_devolucao');
/*!40000 ALTER TABLE `log_geral` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_log_geralBD` BEFORE DELETE ON `log_geral` FOR EACH ROW BEGIN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Exclusão física não permitida. Não pode deletar os logs';
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `bloqueado` char(1) NOT NULL DEFAULT 'N',
  `tentativas` int NOT NULL DEFAULT '0',
  `usuario_ativo` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'fulano da silva','fulano@a','fulano123','N',0,'N'),(2,'fulano teste','fteste@a','fteste','N',0,'N'),(3,'Maria Sobrenome','maria.s@gmail.com','marias1234','N',0,'N'),(4,'João Silva','joao@email.com','12345','N',0,'N'),(6,'João Silva','joao2@email.com','12345','N',0,'N'),(8,'José Sousa','josesousa@email.com','1234','N',0,'S'),(9,'Julia','julia@email.com','12','N',0,'S'),(10,'Giovana','giovana@email.com','123','N',0,'S'),(11,'Ana Clara','ana@email.com','a123','N',0,'S');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tg_usuariosBD` BEFORE DELETE ON `usuarios` FOR EACH ROW begin
	SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Exclusão física não permitida. Use soft delete alterando status para Inativo.';
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'sistemabiblioteca'
--
/*!50003 DROP PROCEDURE IF EXISTS `pr_atualiza_emprestimo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_atualiza_emprestimo`(
    IN p_id_emprestimo INT,
    IN p_data_emprestimo DATE,
    IN p_data_devolucao DATE,
    IN p_emprestimo_ativo CHAR(1),
    IN p_id_usuario INT,
    IN p_id_livro INT,
    IN p_nome_responsavel VARCHAR(250),
    OUT p_status ENUM('Erro','Sucesso')
)
BEGIN
    DECLARE v_existe INT DEFAULT 0;
    DECLARE v_data_emprestimo DATE;
    DECLARE v_data_devolucao DATE;
    DECLARE v_emprestimo_ativo CHAR(1);
    DECLARE v_id_usuario INT;
    DECLARE v_id_livro INT;

    SET p_status = 'Erro';
    SELECT COUNT(*) INTO v_existe
    FROM emprestimos
    WHERE id = p_id_emprestimo;

    IF v_existe = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Empréstimo não encontrado';
    ELSE
        
        SELECT data_emprestimo, data_devolucao, emprestimo_ativo, id_usuario, id_livro
        INTO v_data_emprestimo, v_data_devolucao, v_emprestimo_ativo, v_id_usuario, v_id_livro
        FROM emprestimos
        WHERE id = p_id_emprestimo;

        
        UPDATE emprestimos
        SET data_emprestimo = p_data_emprestimo,
            data_devolucao = p_data_devolucao,
            emprestimo_ativo = p_emprestimo_ativo,
            id_usuario = p_id_usuario,
            id_livro = p_id_livro
        WHERE id = p_id_emprestimo;

        
        IF v_data_emprestimo <> p_data_emprestimo THEN
            INSERT INTO log_geral (nome_tabela, id_tabela, campo_modificado, acao, valor_antigo, valor_novo, nome_responsavel)
            VALUES ('emprestimos', p_id_emprestimo, 'data_emprestimo', 'UPDATE', v_data_emprestimo, p_data_emprestimo, p_nome_responsavel);
        END IF;

        IF v_data_devolucao <> p_data_devolucao THEN
            INSERT INTO log_geral (nome_tabela, id_tabela, campo_modificado, acao, valor_antigo, valor_novo, nome_responsavel)
            VALUES ('emprestimos', p_id_emprestimo, 'data_devolucao', 'UPDATE', v_data_devolucao, p_data_devolucao, p_nome_responsavel);
        END IF;

        IF v_emprestimo_ativo <> p_emprestimo_ativo THEN
            INSERT INTO log_geral (nome_tabela, id_tabela, campo_modificado, acao, valor_antigo, valor_novo, nome_responsavel)
            VALUES ('emprestimos', p_id_emprestimo, 'emprestimo_ativo', 'UPDATE', v_emprestimo_ativo, p_emprestimo_ativo, p_nome_responsavel);
        END IF;

        IF v_id_usuario <> p_id_usuario THEN
            INSERT INTO log_geral (nome_tabela, id_tabela, campo_modificado, acao, valor_antigo, valor_novo, nome_responsavel)
            VALUES ('emprestimos', p_id_emprestimo, 'id_usuario', 'UPDATE', v_id_usuario, p_id_usuario, p_nome_responsavel);
        END IF;

        IF v_id_livro <> p_id_livro THEN
            INSERT INTO log_geral (nome_tabela, id_tabela, campo_modificado, acao, valor_antigo, valor_novo, nome_responsavel)
            VALUES ('emprestimos', p_id_emprestimo, 'id_livro', 'UPDATE', v_id_livro, p_id_livro, p_nome_responsavel);
        END IF;

        SET p_status = 'Sucesso';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_atualiza_livro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_atualiza_livro`(
    IN p_id_livro INT,
    IN p_titulo VARCHAR(250),
    IN p_autor VARCHAR(250),
    IN p_quantidade INT,
    IN p_quant_disponivel INT,
    IN p_categoria VARCHAR(100),
    IN p_nome_responsavel VARCHAR(250),
    OUT p_status ENUM('Erro','Sucesso')
)
BEGIN
    DECLARE v_existe INT DEFAULT 0;
	DECLARE v_titulo VARCHAR(250);
	DECLARE v_autor VARCHAR(250);
	DECLARE v_quantidade INT;
	DECLARE v_quant_disponivel INT;
	DECLARE v_categoria VARCHAR(250);

    SET p_status = 'Erro';

    SELECT COUNT(*) INTO v_existe
    FROM livros
    WHERE id = p_id_livro;

    IF v_existe = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Livro não encontrado';
    ELSE
        UPDATE livros
        SET titulo = p_titulo,
            autor = p_autor,
            quantidade = p_quantidade,
            quant_disponivel = p_quant_disponivel,
            categoria = p_categoria
        WHERE id = p_id_livro;
        
       IF v_titulo <> p_titulo THEN
            INSERT INTO log_geral (nome_tabela, id_tabela, campo_modificado, acao, valor_antigo, valor_novo, nome_responsavel)
            VALUES ('livros', p_id_livro, 'titulo', 'UPDATE', v_titulo, p_titulo, p_nome_responsavel);
        END IF;

        IF v_autor <> p_autor THEN
            INSERT INTO log_geral (nome_tabela, id_tabela, campo_modificado, acao, valor_antigo, valor_novo, nome_responsavel)
            VALUES ('livros', p_id_livro, 'autor', 'UPDATE', v_autor, p_autor, p_nome_responsavel);
        END IF;

        IF v_quantidade <> p_quantidade THEN
            INSERT INTO log_geral (nome_tabela, id_tabela, campo_modificado, acao, valor_antigo, valor_novo, nome_responsavel)
            VALUES ('livros', p_id_livro, 'quantidade', 'UPDATE', v_quantidade, p_quantidade, p_nome_responsavel);
        END IF;

        IF v_quant_disponivel <> p_quant_disponivel THEN
            INSERT INTO log_geral (nome_tabela, id_tabela, campo_modificado, acao, valor_antigo, valor_novo, nome_responsavel)
            VALUES ('livros', p_id_livro, 'quant_disponivel', 'UPDATE', v_quant_disponivel, p_quant_disponivel, p_nome_responsavel);
        END IF;

        IF v_categoria <> p_categoria THEN
            INSERT INTO log_geral (nome_tabela, id_tabela, campo_modificado, acao, valor_antigo, valor_novo, nome_responsavel)
            VALUES ('livros', p_id_livro, 'categoria', 'UPDATE', v_categoria, p_categoria, p_nome_responsavel);
        END IF;
        
        SET p_status = 'Sucesso';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_cadastra_devolucao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_cadastra_devolucao`(
    IN p_id_emprestimo INT,
    IN p_nome_responsavel VARCHAR(250)
)
BEGIN
    DECLARE v_id_livro INT;

    
    SELECT id_livro INTO v_id_livro
    FROM emprestimos
    WHERE id = p_id_emprestimo;

    
    UPDATE emprestimos
    SET data_devolucao = CURDATE()
    WHERE id = p_id_emprestimo;

    
    UPDATE livros
    SET quant_disponivel = quant_disponivel + 1
    WHERE id = v_id_livro;

    
    INSERT INTO log_geral (
        nome_tabela,
        id_tabela,
        acao,
        nome_responsavel,
        campo_modificado,
        valor_novo
    ) VALUES (
        'emprestimos',
        p_id_emprestimo,
        'UPDATE',
        p_nome_responsavel,
        'data_devolucao',
        CURDATE()
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_cadastra_emprestimo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_cadastra_emprestimo`(
    IN p_data_emprestimo DATE,
    IN p_id_usuario INT,
    IN p_id_livro INT,
    IN p_nome_responsavel VARCHAR(250),
    OUT p_status ENUM('Erro', 'Sucesso')
)
BEGIN
    DECLARE v_quant_disponivel INT;

    START TRANSACTION;

    
    SELECT quant_disponivel INTO v_quant_disponivel
    FROM livros
    WHERE id = p_id_livro;

    IF v_quant_disponivel IS NULL THEN
        SET p_status = 'Erro';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Livro não encontrado.';
    ELSEIF v_quant_disponivel <= 0 THEN
        SET p_status = 'Erro';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Livro indisponível para empréstimo.';
    ELSE
        
        INSERT INTO emprestimos (
            data_emprestimo,
            data_devolucao,
            emprestimo_ativo,
            id_usuario,
            id_livro
        ) 
        VALUES (p_data_emprestimo, NULL, 'S', p_id_usuario, p_id_livro);

        
        UPDATE livros
        SET quant_disponivel = quant_disponivel - 1
        WHERE id = p_id_livro;

        
        SET @emprestimo_id = LAST_INSERT_ID();

        
        INSERT INTO log_geral (
            nome_tabela,
            id_tabela,
            acao,
            nome_responsavel,
            valor_antigo,
            valor_novo,
            campo_modificado
        )
        VALUES ('emprestimos', @emprestimo_id, 'INSERT', p_nome_responsavel, NULL, NULL, NULL);

        COMMIT;
        SET p_status = 'Sucesso';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_cadastra_livro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_cadastra_livro`(
    IN p_titulo VARCHAR(250),
    IN p_autor VARCHAR(250),
    IN p_quantidade INT,
    IN p_quant_disponivel INT,
    IN p_categoria VARCHAR(100),
    IN p_nome_responsavel VARCHAR(250),
    OUT p_status ENUM('Erro', 'Sucesso')
)
BEGIN
    START TRANSACTION;

    
    INSERT INTO livros (titulo,
        autor,
        quantidade,
        quant_disponivel,
        categoria,
        livro_ativo
    ) 
    VALUES (p_titulo, p_autor, p_quantidade, p_quant_disponivel, p_categoria, 'S');

    
    SET @livro_id = LAST_INSERT_ID();

    
    INSERT INTO log_geral (
        nome_tabela,
        id_tabela,
        acao,
        nome_responsavel
    )
    VALUES ('livros', @livro_id, 'INSERT', p_nome_responsavel);

    COMMIT;
    SET p_status = 'Sucesso';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_cadastra_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_cadastra_usuario`(
	IN p_nome VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_senha VARCHAR(100),
    IN p_nome_responsavel VARCHAR(250),
    OUT p_status ENUM('Erro', 'Sucesso')
)
BEGIN
	START TRANSACTION;

    
    INSERT INTO usuarios (
        nome,
        email,
        senha,
        bloqueado,
        tentativas,
        usuario_ativo
    ) 
    	VALUES (p_nome, p_email, p_senha, 'N', 0, 'S');

    
    SET @usuario_id = LAST_INSERT_ID();

    
    INSERT INTO log_geral (
        nome_tabela,
        id_tabela,
        acao,
        nome_responsavel
    ) 
    	VALUES ('usuarios', @usuario_id, 'INSERT', p_nome_responsavel);

    COMMIT;
    SET p_status = 'Sucesso';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_desbloquear_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_desbloquear_usuario`(
 	IN p_email VARCHAR(100),
    OUT p_status ENUM('Erro', 'Sucesso')
)
BEGIN
	   UPDATE usuarios 
    SET bloqueado = 'N', tentativas = 0 
    WHERE email = p_email;
    
    IF ROW_COUNT() > 0 THEN
        SET p_status = 'Sucesso';
    ELSE
        SET p_status = 'Erro';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_soft_delete_emprestimo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_soft_delete_emprestimo`(
	IN p_id_emprestimo INT,
	IN p_nome_responsavel VARCHAR(250),
	OUT p_status enum('Erro', 'Sucesso')
)
BEGIN
    DECLARE v_emprestimo_ativo CHAR(1);

    SET p_status = 'ERRO';

    SELECT emprestimo_ativo
    INTO v_emprestimo_ativo
    FROM emprestimos
    WHERE id = p_id_emprestimo LIMIT 1;

    IF v_emprestimo_ativo IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Empréstimo não encontrado';
    END IF;

    IF v_emprestimo_ativo = 'N' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Empréstimo já está inativo';
    ELSE
        UPDATE emprestimos
        SET emprestimo_ativo = 'N'
        WHERE id = p_id_emprestimo;

        INSERT INTO log_geral (nome_tabela,
            id_tabela,
            campo_modificado,
            acao,
            valor_antigo,
            valor_novo,
            nome_responsavel,
            data_modificacao
        )
        VALUES ('emprestimos', p_id_emprestimo, 'emprestimo_ativo', 'DELETE', v_emprestimo_ativo, 'N', p_nome_responsavel);

        SET p_status = 'Sucesso';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_soft_delete_livro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_soft_delete_livro`(
	IN p_id_livro INT,
	IN p_nome_responsavel VARCHAR(250),
    OUT p_status ENUM('Erro','Sucesso')
	)
BEGIN
    DECLARE v_titulo VARCHAR(250);
    DECLARE v_livro_ativo CHAR(1);

    SET p_status = 'Erro';

    SELECT titulo, livro_ativo
    INTO v_titulo, v_livro_ativo
    FROM livros
    WHERE id = p_id_livro
    LIMIT 1;

    IF v_titulo IS NULL OR v_livro_ativo IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Livro não encontrado';
    END IF;

    IF v_livro_ativo = 'N' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Livro já está inativo';
    ELSE
        UPDATE livros
        SET livro_ativo = 'N'
        WHERE id = p_id_livro;

        INSERT INTO log_geral (nome_tabela,
            id_tabela,
            campo_modificado,
            acao,
            valor_antigo,
            valor_novo,
            nome_responsavel,
            data_modificacao
        )
        VALUES ('livros', p_id_livro, 'livro_ativo', 'DELETE', v_livro_ativo, 'N', p_nome_responsavel);

        SET p_status = 'Sucesso';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_soft_delete_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_soft_delete_usuario`(
    IN p_id INT,
    IN p_nome_responsavel VARCHAR(250),
    OUT p_status ENUM('Erro', 'Sucesso')
)
BEGIN
    DECLARE v_nome_usuario VARCHAR(100);

    START TRANSACTION;

    
    SELECT nome INTO v_nome_usuario
    FROM usuarios
    WHERE id = p_id AND usuario_ativo = 'S';

    IF v_nome_usuario IS NULL THEN
        SET p_status = 'Erro';
        ROLLBACK;
    ELSE
        
        UPDATE usuarios
        SET usuario_ativo = 'N'
        WHERE id = p_id;

        
        INSERT INTO log_geral (
            nome_tabela,
            id_tabela,
            acao,
            valor_antigo,
            valor_novo,
            nome_responsavel,
            campo_modificado
        )
        VALUES (
            'usuarios',   
            p_id,                
            'DELETE',          
            'S',
            'N',
            p_nome_responsavel,
            'usuario_ativo'
        );

        COMMIT;
        SET p_status = 'Sucesso';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_troca_senha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_troca_senha`(
    IN p_email VARCHAR(250),
    IN p_senha_atual VARCHAR(100),
    IN p_senha_nova VARCHAR(100),
    OUT p_status ENUM('Erro', 'Sucesso')
)
BEGIN
    DECLARE v_senha_bd VARCHAR(100);
    DECLARE v_bloqueado CHAR(1);

    -- Buscar senha e status de bloqueio do usuário
    SELECT senha, bloqueado 
    INTO v_senha_bd, v_bloqueado
    FROM usuarios 
    WHERE email = p_email;

    -- Verifica se a senha atual está correta
    IF v_senha_bd = p_senha_atual THEN
        -- Atualiza senha e desbloqueia, se necessário
        UPDATE usuarios 
        SET senha = p_senha_nova,
            bloqueado = 'N'
        WHERE email = p_email;

        SET p_status = 'Sucesso';
    ELSE
        SET p_status = 'Erro';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_valida_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_valida_login`(
    IN p_email VARCHAR(250),
    IN p_senha VARCHAR(250),
    OUT p_status VARCHAR(50)
)
proc_end: BEGIN
    DECLARE v_id INT;
    DECLARE v_senha_bd VARCHAR(100);
    DECLARE v_tentativas INT DEFAULT 0;
    DECLARE v_bloqueado CHAR(1);
    DECLARE v_usuario_ativo CHAR(1);

    
    SELECT id, senha, tentativas, bloqueado, usuario_ativo
    INTO v_id, v_senha_bd, v_tentativas, v_bloqueado, v_usuario_ativo
    FROM usuarios
    WHERE email = p_email
    LIMIT 1;

    
    IF v_id IS NULL THEN
        SET p_status = 'Usuário não encontrado';
        LEAVE proc_end;
    END IF;

    
    IF v_usuario_ativo = 'N' THEN
        SET p_status = 'Usuário inativo';
        LEAVE proc_end;
    END IF;

    
    IF v_bloqueado = 'S' THEN
        SET p_status = 'Usuário bloqueado';
        LEAVE proc_end;
    END IF;

    
    IF v_senha_bd = p_senha THEN
        
        UPDATE usuarios
        SET tentativas = 0
        WHERE id = v_id;

        SET p_status = 'Login realizado com sucesso';
    ELSE
        
        SET v_tentativas = v_tentativas + 1;

        IF v_tentativas >= 3 THEN
            
            UPDATE usuarios
            SET tentativas = v_tentativas,
                bloqueado = 'S'
            WHERE id = v_id;

            SET p_status = 'Usuário bloqueado após 3 tentativas';
        ELSE
            
            UPDATE usuarios
            SET tentativas = v_tentativas
            WHERE id = v_id;

            SET p_status = CONCAT('Senha incorreta. Tentativas: ', v_tentativas, '/3');
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-10 19:52:12
