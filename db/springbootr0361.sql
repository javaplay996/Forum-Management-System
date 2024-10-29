-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootr0361
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617542917410 DEFAULT CHARSET=utf8 COMMENT='客服中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-04-04 13:15:24',1,1,'提问1','回复1',1),(62,'2021-04-04 13:15:24',2,2,'提问2','回复2',2),(63,'2021-04-04 13:15:24',3,3,'提问3','回复3',3),(64,'2021-04-04 13:15:24',4,4,'提问4','回复4',4),(65,'2021-04-04 13:15:24',5,5,'提问5','回复5',5),(66,'2021-04-04 13:15:24',6,6,'提问6','回复6',6),(1617542866783,'2021-04-04 13:27:46',1617542616929,NULL,'111111',NULL,0),(1617542869276,'2021-04-04 13:27:48',1617542616929,NULL,'111111',NULL,0),(1617542870141,'2021-04-04 13:27:49',1617542616929,NULL,'1111',NULL,0),(1617542894127,'2021-04-04 13:28:13',1617542616929,1617542616929,NULL,'111111',0),(1617542917409,'2021-04-04 13:28:37',1617542616929,NULL,'1',NULL,1);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootr0361/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootr0361/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootr0361/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgonggao`
--

DROP TABLE IF EXISTS `discussgonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617542673916 DEFAULT CHARSET=utf8 COMMENT='公告评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgonggao`
--

LOCK TABLES `discussgonggao` WRITE;
/*!40000 ALTER TABLE `discussgonggao` DISABLE KEYS */;
INSERT INTO `discussgonggao` VALUES (111,'2021-04-04 13:15:24',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-04 13:15:24',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-04 13:15:24',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-04 13:15:25',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-04 13:15:25',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-04 13:15:25',6,6,'用户名6','评论内容6','回复内容6'),(1617542673915,'2021-04-04 13:24:33',21,1617542616929,'1','1',NULL);
/*!40000 ALTER TABLE `discussgonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussrementiezi`
--

DROP TABLE IF EXISTS `discussrementiezi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussrementiezi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='热门帖子评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussrementiezi`
--

LOCK TABLES `discussrementiezi` WRITE;
/*!40000 ALTER TABLE `discussrementiezi` DISABLE KEYS */;
INSERT INTO `discussrementiezi` VALUES (121,'2021-04-04 13:15:25',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-04 13:15:25',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-04 13:15:25',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-04 13:15:25',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-04 13:15:25',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-04 13:15:25',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussrementiezi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617542715684 DEFAULT CHARSET=utf8 COMMENT='论坛新天地';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-04-04 13:15:24','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-04-04 13:15:24','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-04-04 13:15:24','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-04-04 13:15:24','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-04-04 13:15:24','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-04-04 13:15:24','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1617542525929,'2021-04-04 13:22:05','11','<p>1</p>',NULL,1,NULL,'开放'),(1617542715683,'2021-04-04 13:25:15','333','<p>请输入内容33</p>',0,1617542616929,'1','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggao`
--

DROP TABLE IF EXISTS `gonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617542399178 DEFAULT CHARSET=utf8 COMMENT='公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggao`
--

LOCK TABLES `gonggao` WRITE;
/*!40000 ALTER TABLE `gonggao` DISABLE KEYS */;
INSERT INTO `gonggao` VALUES (21,'2021-04-04 13:15:24','公告标题1','公告类型1','公告内容1','2021-04-04','发布人1','http://localhost:8080/springbootr0361/upload/gonggao_fengmian1.jpg',3),(22,'2021-04-04 13:15:24','公告标题2','公告类型2','公告内容2','2021-04-04','发布人2','http://localhost:8080/springbootr0361/upload/gonggao_fengmian2.jpg',2),(23,'2021-04-04 13:15:24','公告标题3','公告类型3','公告内容3','2021-04-04','发布人3','http://localhost:8080/springbootr0361/upload/gonggao_fengmian3.jpg',3),(24,'2021-04-04 13:15:24','公告标题4','公告类型4','公告内容4','2021-04-04','发布人4','http://localhost:8080/springbootr0361/upload/gonggao_fengmian4.jpg',4),(25,'2021-04-04 13:15:24','公告标题5','公告类型5','公告内容5','2021-04-04','发布人5','http://localhost:8080/springbootr0361/upload/gonggao_fengmian5.jpg',5),(26,'2021-04-04 13:15:24','公告标题6','公告类型6','公告内容6','2021-04-04','发布人6','http://localhost:8080/springbootr0361/upload/gonggao_fengmian6.jpg',6);
/*!40000 ALTER TABLE `gonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoleixing`
--

DROP TABLE IF EXISTS `gonggaoleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617542441831 DEFAULT CHARSET=utf8 COMMENT='公告类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoleixing`
--

LOCK TABLES `gonggaoleixing` WRITE;
/*!40000 ALTER TABLE `gonggaoleixing` DISABLE KEYS */;
INSERT INTO `gonggaoleixing` VALUES (31,'2021-04-04 13:15:24','公告类型12'),(32,'2021-04-04 13:15:24','公告类型2'),(33,'2021-04-04 13:15:24','公告类型3'),(34,'2021-04-04 13:15:24','公告类型4'),(35,'2021-04-04 13:15:24','公告类型5'),(36,'2021-04-04 13:15:24','公告类型6');
/*!40000 ALTER TABLE `gonggaoleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617542799045 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (101,'2021-04-04 13:15:24',1,'用户名1','留言内容1','回复内容1111'),(102,'2021-04-04 13:15:24',2,'用户名2','留言内容2','回复内容2'),(103,'2021-04-04 13:15:24',3,'用户名3','留言内容3','回复内容3'),(104,'2021-04-04 13:15:24',4,'用户名4','留言内容4','回复内容4'),(105,'2021-04-04 13:15:24',5,'用户名5','留言内容5','回复内容5'),(1617542799044,'2021-04-04 13:26:38',1617542616929,'1','333',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617542576243 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-04-04 13:15:24','标题1','简介1','http://localhost:8080/springbootr0361/upload/news_picture1.jpg','内容1'),(92,'2021-04-04 13:15:24','标题2','简介2','http://localhost:8080/springbootr0361/upload/news_picture2.jpg','内容2'),(93,'2021-04-04 13:15:24','标题3','简介3','http://localhost:8080/springbootr0361/upload/news_picture3.jpg','内容3'),(94,'2021-04-04 13:15:24','标题4','简介4','http://localhost:8080/springbootr0361/upload/news_picture4.jpg','内容4'),(95,'2021-04-04 13:15:24','标题5','简介5','http://localhost:8080/springbootr0361/upload/news_picture5.jpg','内容5'),(96,'2021-04-04 13:15:24','标题6','简介6','http://localhost:8080/springbootr0361/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rementiezi`
--

DROP TABLE IF EXISTS `rementiezi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rementiezi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tiezifenlei` varchar(200) DEFAULT NULL COMMENT '帖子分类',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617542466381 DEFAULT CHARSET=utf8 COMMENT='热门帖子';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rementiezi`
--

LOCK TABLES `rementiezi` WRITE;
/*!40000 ALTER TABLE `rementiezi` DISABLE KEYS */;
INSERT INTO `rementiezi` VALUES (41,'2021-04-04 13:15:24','标题1','帖子分类1','发布人1','2021-04-04','http://localhost:8080/springbootr0361/upload/rementiezi_tupian1.jpg',1,1,'2021-04-04 21:15:24',1),(42,'2021-04-04 13:15:24','标题2','帖子分类2','发布人2','2021-04-04','http://localhost:8080/springbootr0361/upload/rementiezi_tupian2.jpg',2,2,'2021-04-04 21:15:24',2),(43,'2021-04-04 13:15:24','标题3','帖子分类3','发布人3','2021-04-04','http://localhost:8080/springbootr0361/upload/rementiezi_tupian3.jpg',3,3,'2021-04-04 21:25:00',4),(44,'2021-04-04 13:15:24','标题4','帖子分类4','发布人4','2021-04-04','http://localhost:8080/springbootr0361/upload/rementiezi_tupian4.jpg',4,4,'2021-04-04 21:15:24',4),(45,'2021-04-04 13:15:24','标题5','帖子分类5','发布人5','2021-04-04','http://localhost:8080/springbootr0361/upload/rementiezi_tupian5.jpg',5,5,'2021-04-04 21:15:24',5),(46,'2021-04-04 13:15:24','标题6','帖子分类6','发布人6','2021-04-04','http://localhost:8080/springbootr0361/upload/rementiezi_tupian6.jpg',7,7,'2021-04-04 21:24:03',9);
/*!40000 ALTER TABLE `rementiezi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617542669225 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1617542539248,'2021-04-04 13:22:18',1,1,'1','1','http://localhost:8080/springbootr0361/upload/1617542537201.jpg'),(1617542642302,'2021-04-04 13:24:02',1617542616929,46,'rementiezi','标题6','http://localhost:8080/springbootr0361/upload/rementiezi_tupian6.jpg'),(1617542669224,'2021-04-04 13:24:28',1617542616929,21,'gonggao','公告标题1','http://localhost:8080/springbootr0361/upload/gonggao_fengmian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiezifenlei`
--

DROP TABLE IF EXISTS `tiezifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiezifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tiezifenlei` varchar(200) DEFAULT NULL COMMENT '帖子分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617542481352 DEFAULT CHARSET=utf8 COMMENT='帖子分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiezifenlei`
--

LOCK TABLES `tiezifenlei` WRITE;
/*!40000 ALTER TABLE `tiezifenlei` DISABLE KEYS */;
INSERT INTO `tiezifenlei` VALUES (51,'2021-04-04 13:15:24','帖子分类1'),(52,'2021-04-04 13:15:24','帖子分类2'),(53,'2021-04-04 13:15:24','帖子分类3'),(54,'2021-04-04 13:15:24','帖子分类4'),(55,'2021-04-04 13:15:24','帖子分类5'),(56,'2021-04-04 13:15:24','帖子分类6'),(1617542481351,'2021-04-04 13:21:20','1111');
/*!40000 ALTER TABLE `tiezifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','jyevzirhnv6weplmfhipqtsbbeu55sb6','2021-04-04 13:18:09','2021-04-04 14:18:09'),(2,1617542616929,'1','yonghu','用户','9t4xwkz3uh15n9b9nbegypbq9959cddk','2021-04-04 13:23:43','2021-04-04 14:23:44');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-04 13:15:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617542616930 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-04 13:15:24','用户1','123456','昵称1','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/springbootr0361/upload/yonghu_zhaopian1.jpg','备注1'),(12,'2021-04-04 13:15:24','用户2','123456','昵称2','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/springbootr0361/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-04-04 13:15:24','用户3','123456','昵称3','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/springbootr0361/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-04-04 13:15:24','用户4','123456','昵称4','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/springbootr0361/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-04-04 13:15:24','用户5','123456','昵称5','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/springbootr0361/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-04-04 13:15:24','用户6','123456','昵称6','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/springbootr0361/upload/yonghu_zhaopian6.jpg','备注6'),(1617542616929,'2021-04-04 13:23:36','1','1','11','131','男','12312312313','3@qq.com','443434343434343434','http://localhost:8080/springbootr0361/upload/1617542816314.jpg','131');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05 18:08:53
