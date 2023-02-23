-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot7vkr1
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot7vkr1/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot7vkr1/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot7vkr1/upload/picture3.jpg'),(6,'picture4','http://localhost:8080/springboot7vkr1/upload/1618469446284.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslaoshihuida`
--

DROP TABLE IF EXISTS `discusslaoshihuida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslaoshihuida` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469753455 DEFAULT CHARSET=utf8 COMMENT='老师回答评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslaoshihuida`
--

LOCK TABLES `discusslaoshihuida` WRITE;
/*!40000 ALTER TABLE `discusslaoshihuida` DISABLE KEYS */;
INSERT INTO `discusslaoshihuida` VALUES (111,'2021-04-15 06:47:38',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-15 06:47:38',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-15 06:47:38',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-15 06:47:38',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-15 06:47:38',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-15 06:47:38',6,6,'用户名6','评论内容6','回复内容6'),(1618469753454,'2021-04-15 06:55:52',1618469632218,1618469461656,'12','谢谢老师',NULL);
/*!40000 ALTER TABLE `discusslaoshihuida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslaoshixinxi`
--

DROP TABLE IF EXISTS `discusslaoshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslaoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='老师信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslaoshixinxi`
--

LOCK TABLES `discusslaoshixinxi` WRITE;
/*!40000 ALTER TABLE `discusslaoshixinxi` DISABLE KEYS */;
INSERT INTO `discusslaoshixinxi` VALUES (121,'2021-04-15 06:47:38',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-15 06:47:38',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-15 06:47:38',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-15 06:47:38',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-15 06:47:38',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-15 06:47:38',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusslaoshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxueshengwenti`
--

DROP TABLE IF EXISTS `discussxueshengwenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxueshengwenti` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469734308 DEFAULT CHARSET=utf8 COMMENT='学生问题评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxueshengwenti`
--

LOCK TABLES `discussxueshengwenti` WRITE;
/*!40000 ALTER TABLE `discussxueshengwenti` DISABLE KEYS */;
INSERT INTO `discussxueshengwenti` VALUES (101,'2021-04-15 06:47:38',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-15 06:47:38',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-15 06:47:38',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-15 06:47:38',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-15 06:47:38',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-15 06:47:38',6,6,'用户名6','评论内容6','回复内容6'),(1618469603296,'2021-04-15 06:53:22',1618469502652,1618469527598,'122','12',NULL),(1618469734307,'2021-04-15 06:55:33',1618469502652,1618469461656,'12','12',NULL);
/*!40000 ALTER TABLE `discussxueshengwenti` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1618469679501 DEFAULT CHARSET=utf8 COMMENT='交流区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2021-04-15 06:47:38','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-04-15 06:47:38','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-04-15 06:47:38','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-04-15 06:47:38','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-04-15 06:47:38','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-04-15 06:47:38','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1618469679500,'2021-04-15 06:54:38','老师帖子','<p>请输入内容12<img src=\"../../../upload/1618469676465.jpg\" alt=\"\" width=\"1078\" height=\"1078\" /></p>',0,1618469527598,'122','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guanzhuliebiao`
--

DROP TABLE IF EXISTS `guanzhuliebiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guanzhuliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469793784 DEFAULT CHARSET=utf8 COMMENT='关注列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guanzhuliebiao`
--

LOCK TABLES `guanzhuliebiao` WRITE;
/*!40000 ALTER TABLE `guanzhuliebiao` DISABLE KEYS */;
INSERT INTO `guanzhuliebiao` VALUES (71,'2021-04-15 06:47:38','老师账号1','老师姓名1','性别1','手机号码1','http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang1.jpg','学生账号1','学生姓名1'),(72,'2021-04-15 06:47:38','老师账号2','老师姓名2','性别2','手机号码2','http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang2.jpg','学生账号2','学生姓名2'),(73,'2021-04-15 06:47:38','老师账号3','老师姓名3','性别3','手机号码3','http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang3.jpg','学生账号3','学生姓名3'),(74,'2021-04-15 06:47:38','老师账号4','老师姓名4','性别4','手机号码4','http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang4.jpg','学生账号4','学生姓名4'),(75,'2021-04-15 06:47:38','老师账号5','老师姓名5','性别5','手机号码5','http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang5.jpg','学生账号5','学生姓名5'),(76,'2021-04-15 06:47:38','老师账号6','老师姓名6','性别6','手机号码6','http://localhost:8080/springboot7vkr1/upload/guanzhuliebiao_touxiang6.jpg','学生账号6','学生姓名6'),(1618469793783,'2021-04-15 06:56:33','122','122','女','12346579809','http://localhost:8080/springboot7vkr1/upload/1618469562703.jpg','12','12');
/*!40000 ALTER TABLE `guanzhuliebiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kemuleixing`
--

DROP TABLE IF EXISTS `kemuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kemuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `jianyao` longtext COMMENT '简要',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469484473 DEFAULT CHARSET=utf8 COMMENT='科目类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kemuleixing`
--

LOCK TABLES `kemuleixing` WRITE;
/*!40000 ALTER TABLE `kemuleixing` DISABLE KEYS */;
INSERT INTO `kemuleixing` VALUES (31,'2021-04-15 06:47:38','科目1','简要1'),(32,'2021-04-15 06:47:38','科目2','简要2'),(33,'2021-04-15 06:47:38','科目3','简要3'),(34,'2021-04-15 06:47:38','科目4','简要4'),(35,'2021-04-15 06:47:38','科目5','简要5'),(36,'2021-04-15 06:47:38','科目6','简要6'),(1618469484472,'2021-04-15 06:51:23','物理',NULL);
/*!40000 ALTER TABLE `kemuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laoshi`
--

DROP TABLE IF EXISTS `laoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshizhanghao` varchar(200) NOT NULL COMMENT '老师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laoshizhanghao` (`laoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469527599 DEFAULT CHARSET=utf8 COMMENT='老师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laoshi`
--

LOCK TABLES `laoshi` WRITE;
/*!40000 ALTER TABLE `laoshi` DISABLE KEYS */;
INSERT INTO `laoshi` VALUES (21,'2021-04-15 06:47:38','老师1','123456','老师姓名1','男','13823888881','http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang1.jpg'),(22,'2021-04-15 06:47:38','老师2','123456','老师姓名2','男','13823888882','http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang2.jpg'),(23,'2021-04-15 06:47:38','老师3','123456','老师姓名3','男','13823888883','http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang3.jpg'),(24,'2021-04-15 06:47:38','老师4','123456','老师姓名4','男','13823888884','http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang4.jpg'),(25,'2021-04-15 06:47:38','老师5','123456','老师姓名5','男','13823888885','http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang5.jpg'),(26,'2021-04-15 06:47:38','老师6','123456','老师姓名6','男','13823888886','http://localhost:8080/springboot7vkr1/upload/laoshi_touxiang6.jpg'),(1618469527598,'2021-04-15 06:52:07','122','122','122','女','12346579809','http://localhost:8080/springboot7vkr1/upload/1618469555453.jpg');
/*!40000 ALTER TABLE `laoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laoshihuida`
--

DROP TABLE IF EXISTS `laoshihuida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laoshihuida` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenti` varchar(200) DEFAULT NULL COMMENT '问题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `kemuleixing` varchar(200) DEFAULT NULL COMMENT '科目类型',
  `wentimiaoshu` varchar(200) DEFAULT NULL COMMENT '问题描述',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `laoshizhanghao` varchar(200) NOT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) NOT NULL COMMENT '老师姓名',
  `wentijieda` longtext NOT NULL COMMENT '问题解答',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469632219 DEFAULT CHARSET=utf8 COMMENT='老师回答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laoshihuida`
--

LOCK TABLES `laoshihuida` WRITE;
/*!40000 ALTER TABLE `laoshihuida` DISABLE KEYS */;
INSERT INTO `laoshihuida` VALUES (51,'2021-04-15 06:47:38','问题1','http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian1.jpg','科目类型1','问题描述1','学生账号1','学生姓名1','老师账号1','老师姓名1','问题解答1','备注1',1,1,1),(52,'2021-04-15 06:47:38','问题2','http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian2.jpg','科目类型2','问题描述2','学生账号2','学生姓名2','老师账号2','老师姓名2','问题解答2','备注2',2,2,2),(53,'2021-04-15 06:47:38','问题3','http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian3.jpg','科目类型3','问题描述3','学生账号3','学生姓名3','老师账号3','老师姓名3','问题解答3','备注3',3,3,3),(54,'2021-04-15 06:47:38','问题4','http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian4.jpg','科目类型4','问题描述4','学生账号4','学生姓名4','老师账号4','老师姓名4','问题解答4','备注4',4,4,4),(55,'2021-04-15 06:47:38','问题5','http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian5.jpg','科目类型5','问题描述5','学生账号5','学生姓名5','老师账号5','老师姓名5','问题解答5','备注5',5,5,5),(56,'2021-04-15 06:47:38','问题6','http://localhost:8080/springboot7vkr1/upload/laoshihuida_fengmian6.jpg','科目类型6','问题描述6','学生账号6','学生姓名6','老师账号6','老师姓名6','问题解答6','备注6',6,6,6),(1618469632218,'2021-04-15 06:53:52','测试问题','http://localhost:8080/springboot7vkr1/upload/1618469496748.jpg','物理','1212','12','12','122','122','<p>请输入问题解答12121212<img src=\"../../../upload/1618469628801.jpg\" alt=\"\" width=\"864\" height=\"864\" /></p>','122',1,0,9);
/*!40000 ALTER TABLE `laoshihuida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laoshixinxi`
--

DROP TABLE IF EXISTS `laoshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) NOT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) NOT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `ziwojieshao` longtext NOT NULL COMMENT '自我介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469566615 DEFAULT CHARSET=utf8 COMMENT='老师信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laoshixinxi`
--

LOCK TABLES `laoshixinxi` WRITE;
/*!40000 ALTER TABLE `laoshixinxi` DISABLE KEYS */;
INSERT INTO `laoshixinxi` VALUES (61,'2021-04-15 06:47:38','老师账号1','老师姓名1','性别1','手机号码1','http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang1.jpg','自我介绍1',1,1,'2021-04-15 14:53:05',2),(62,'2021-04-15 06:47:38','老师账号2','老师姓名2','性别2','手机号码2','http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang2.jpg','自我介绍2',2,2,'2021-04-15 14:47:38',2),(63,'2021-04-15 06:47:38','老师账号3','老师姓名3','性别3','手机号码3','http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang3.jpg','自我介绍3',3,3,'2021-04-15 14:47:38',3),(64,'2021-04-15 06:47:38','老师账号4','老师姓名4','性别4','手机号码4','http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang4.jpg','自我介绍4',4,4,'2021-04-15 14:47:38',4),(65,'2021-04-15 06:47:38','老师账号5','老师姓名5','性别5','手机号码5','http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang5.jpg','自我介绍5',5,5,'2021-04-15 14:47:38',5),(66,'2021-04-15 06:47:38','老师账号6','老师姓名6','性别6','手机号码6','http://localhost:8080/springboot7vkr1/upload/laoshixinxi_touxiang6.jpg','自我介绍6',6,6,'2021-04-15 14:47:38',6),(1618469566614,'2021-04-15 06:52:46','122','122','女','12346579809','http://localhost:8080/springboot7vkr1/upload/1618469562703.jpg','<p>1212</p>',2,0,'2021-04-15 14:56:37',3);
/*!40000 ALTER TABLE `laoshixinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1618469645474 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1618469645473,'2021-04-15 06:54:05',1618469527598,1618469632218,'laoshihuida','测试问题','http://localhost:8080/springboot7vkr1/upload/1618469496748.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','2jf7su3kfdgl0k73rmdkccamf68y1j0w','2021-04-15 06:49:52','2021-04-15 07:49:52'),(2,1618469461656,'12','xuesheng','学生','fvec3cr9bsouwbrxzj2mhyc22563pra0','2021-04-15 06:51:06','2021-04-15 07:55:18'),(3,1618469527598,'122','laoshi','老师','vnk3t3utb0fhavrjjweoe66mvdjzwzel','2021-04-15 06:52:14','2021-04-15 07:56:59');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-15 06:47:38');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengzhanghao` (`xueshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469461657 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-04-15 06:47:38','学生1','123456','学生姓名1','男','13823888881','http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang1.jpg'),(12,'2021-04-15 06:47:38','学生2','123456','学生姓名2','男','13823888882','http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang2.jpg'),(13,'2021-04-15 06:47:38','学生3','123456','学生姓名3','男','13823888883','http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang3.jpg'),(14,'2021-04-15 06:47:38','学生4','123456','学生姓名4','男','13823888884','http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang4.jpg'),(15,'2021-04-15 06:47:38','学生5','123456','学生姓名5','男','13823888885','http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang5.jpg'),(16,'2021-04-15 06:47:38','学生6','123456','学生姓名6','男','13823888886','http://localhost:8080/springboot7vkr1/upload/xuesheng_touxiang6.jpg'),(1618469461656,'2021-04-15 06:51:01','12','12','12','女','12345678908','http://localhost:8080/springboot7vkr1/upload/1618469473442.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengwenti`
--

DROP TABLE IF EXISTS `xueshengwenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengwenti` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenti` varchar(200) NOT NULL COMMENT '问题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `kemuleixing` varchar(200) NOT NULL COMMENT '科目类型',
  `wentimiaoshu` longtext NOT NULL COMMENT '问题描述',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618469502653 DEFAULT CHARSET=utf8 COMMENT='学生问题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengwenti`
--

LOCK TABLES `xueshengwenti` WRITE;
/*!40000 ALTER TABLE `xueshengwenti` DISABLE KEYS */;
INSERT INTO `xueshengwenti` VALUES (41,'2021-04-15 06:47:38','问题1','http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian1.jpg','科目类型1','问题描述1','2021-04-15 14:47:38','学生账号1','学生姓名1',1,1,'2021-04-15 14:47:38',1),(42,'2021-04-15 06:47:38','问题2','http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian2.jpg','科目类型2','问题描述2','2021-04-15 14:47:38','学生账号2','学生姓名2',2,2,'2021-04-15 14:47:38',2),(43,'2021-04-15 06:47:38','问题3','http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian3.jpg','科目类型3','问题描述3','2021-04-15 14:47:38','学生账号3','学生姓名3',3,3,'2021-04-15 14:47:38',3),(44,'2021-04-15 06:47:38','问题4','http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian4.jpg','科目类型4','问题描述4','2021-04-15 14:47:38','学生账号4','学生姓名4',4,4,'2021-04-15 14:47:38',4),(45,'2021-04-15 06:47:38','问题5','http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian5.jpg','科目类型5','问题描述5','2021-04-15 14:47:38','学生账号5','学生姓名5',5,5,'2021-04-15 14:47:38',5),(46,'2021-04-15 06:47:38','问题6','http://localhost:8080/springboot7vkr1/upload/xueshengwenti_fengmian6.jpg','科目类型6','问题描述6','2021-04-15 14:47:38','学生账号6','学生姓名6',6,6,'2021-04-15 14:47:38',6),(1618469502652,'2021-04-15 06:51:41','测试问题','http://localhost:8080/springboot7vkr1/upload/1618469496748.jpg','物理','1212','2021-04-15 14:51:29','12','12',2,0,'2021-04-15 14:55:36',5);
/*!40000 ALTER TABLE `xueshengwenti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-22 10:32:45
