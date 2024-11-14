/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangluocaiwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangluocaiwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangluocaiwu`;

/*Table structure for table `baoxiao` */

DROP TABLE IF EXISTS `baoxiao`;

CREATE TABLE `baoxiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `baoxiao_name` varchar(200) DEFAULT NULL COMMENT '报销名称  Search111 ',
  `baoxiao_types` int(11) DEFAULT NULL COMMENT '报销类型  Search111 ',
  `money` decimal(10,4) DEFAULT NULL COMMENT '报销金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `baoxiao_content` text COMMENT '报销详情',
  `baoxiao_yesno_types` int(11) DEFAULT NULL COMMENT '是否同意  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='报销';

/*Data for the table `baoxiao` */

insert  into `baoxiao`(`id`,`yonghu_id`,`baoxiao_name`,`baoxiao_types`,`money`,`insert_time`,`baoxiao_content`,`baoxiao_yesno_types`,`create_time`) values (5,1,'报销1',2,'200.0000','2021-05-12 11:00:00','无\r\n',2,'2021-05-12 11:00:00'),(6,2,'报销2',1,'500.0000','2021-05-12 11:12:09','报销2的详情\r\n',2,'2021-05-12 11:12:09'),(7,1,'报销9',1,'900.0000','2021-05-12 11:16:30','报销900遇见\r\n',1,'2021-05-12 11:16:30'),(8,1,'报销8',1,'800.0000','2021-05-12 11:18:58','报销8的详情\r\n',2,'2021-05-12 11:18:58');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-12 10:31:52'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-12 10:31:52'),(3,'shouzhi_yesno_types','收支',1,'支出',NULL,'2021-05-12 10:31:52'),(4,'shouzhi_yesno_types','收支',2,'收入',NULL,'2021-05-12 10:31:52'),(5,'shouzhi_leixing_types','收支类型名称',1,'收入类型1',NULL,'2021-05-12 10:31:52'),(6,'shouzhi_leixing_types','收支类型名称',2,'收入类型2',NULL,'2021-05-12 10:31:52'),(7,'shouzhi_leixing_types','收支类型名称',3,'工资支出',NULL,'2021-05-12 10:31:52'),(8,'shouzhi_leixing_types','收支类型名称',4,'报销支出',NULL,'2021-05-12 10:31:52'),(9,'shouzhi_leixing_types','收支类型名称',5,'支出类型3',NULL,'2021-05-12 10:31:52'),(10,'gonggao_types','新闻公告类型名称',1,'日常公告',NULL,'2021-05-12 10:31:52'),(11,'gonggao_types','新闻公告类型名称',2,'紧急公告',NULL,'2021-05-12 10:31:52'),(12,'gonggao_types','新闻公告类型名称',3,'新闻类型1',NULL,'2021-05-12 10:31:52'),(13,'gonggao_types','新闻公告类型名称',4,'新闻类型2',NULL,'2021-05-12 10:31:52'),(14,'baoxiao_types','报销类型名称',1,'车费报销',NULL,'2021-05-12 10:31:52'),(15,'baoxiao_types','报销类型名称',2,'出差报销',NULL,'2021-05-12 10:31:52'),(16,'baoxiao_yesno_types','是否同意',1,'待审批',NULL,'2021-05-12 10:31:52'),(17,'baoxiao_yesno_types','是否同意',2,'同意',NULL,'2021-05-12 10:31:52'),(18,'gonggao_types','新闻公告类型名称',5,'新闻类型3',NULL,'2021-05-12 11:14:41'),(19,'baoxiao_yesno_types','是否同意',3,'不同意',NULL,'2021-05-12 10:31:52');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '新闻公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '新闻公告类型 Search111 ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '新闻公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻公告时间',
  `gonggao_content` text COMMENT '新闻公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新闻公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`gonggao_photo`,`insert_time`,`gonggao_content`,`create_time`) values (3,'新闻1',3,'http://localhost:8080/wangluocaiwu/file/download?fileName=1620788975999.jpg','2021-05-12 11:09:43','新闻内容1\r\n','2021-05-12 11:09:43'),(4,'公告1',1,'http://localhost:8080/wangluocaiwu/file/download?fileName=1620789233604.jpg','2021-05-12 11:13:54','公告1的详情\r\n','2021-05-12 11:13:54');

/*Table structure for table `shouzhi` */

DROP TABLE IF EXISTS `shouzhi`;

CREATE TABLE `shouzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shouzhi_name` varchar(200) DEFAULT NULL COMMENT '收支名称  Search111 ',
  `shouzhi_yesno_types` int(11) DEFAULT NULL COMMENT '收支  Search111 ',
  `shouzhi_leixing_types` int(11) DEFAULT NULL COMMENT '收支类型  Search111 ',
  `shouzhi_new_money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `shouzhi_content` text COMMENT '收支详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='收支';

/*Data for the table `shouzhi` */

insert  into `shouzhi`(`id`,`yonghu_id`,`shouzhi_name`,`shouzhi_yesno_types`,`shouzhi_leixing_types`,`shouzhi_new_money`,`insert_time`,`shouzhi_content`,`create_time`) values (1,1,'张1的2021-6工资支出1000.0',1,3,'1000.00','2021-05-12 10:55:32','张1的2021-6工资支出1000.0','2021-05-12 10:55:32'),(2,1,'张1的报销支出200.0',1,4,'200.00','2021-05-12 11:00:00','张1的报销支出200.0','2021-05-12 11:00:00'),(3,NULL,'收入1',2,2,'630.00','2021-05-12 11:09:16','收入1的详情\r\n','2021-05-12 11:09:16'),(4,2,'张2的2021-5工资支出900.0',1,3,'900.00','2021-05-12 11:11:39','张2的2021-5工资支出900.0','2021-05-12 11:11:39'),(5,2,'张2的报销支出500.0',1,4,'500.00','2021-05-12 11:12:09','张2的报销支出500.0','2021-05-12 11:12:09'),(6,NULL,'收入2',2,2,'800.00','2021-05-12 11:13:30','','2021-05-12 11:13:30'),(7,1,'张1的报销支出800.0',1,4,'800.00','2021-05-12 11:21:34','张1的报销支出800.0','2021-05-12 11:21:34');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','hc5yo09xdt5mv7o8n9pcm09hl9q6luum','2021-05-12 10:53:59','2021-05-12 12:21:04'),(2,1,'a1','yonghu','员工','xer7xhfd10c0xqy1l5qq6ny5ufysqc4p','2021-05-12 11:14:52','2021-05-12 12:14:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `month` varchar(200) DEFAULT NULL COMMENT '月份  Search111',
  `money` decimal(10,4) DEFAULT NULL COMMENT '薪资',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yonghu_id`,`month`,`money`,`create_time`) values (5,1,'2021-6','1000.0000','2021-05-12 10:55:32'),(6,2,'2021-5','900.0000','2021-05-12 11:11:39');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/wangluocaiwu/file/download?fileName=1620788085725.jpg',1,'2021-05-12 10:54:50'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/wangluocaiwu/file/download?fileName=1620788106032.jpg',1,'2021-05-12 10:55:09'),(3,'a3','123456','张3','17703786903','410224199610232003','http://localhost:8080/wangluocaiwu/file/download?fileName=1620789065930.jpg',2,'2021-05-12 11:11:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
