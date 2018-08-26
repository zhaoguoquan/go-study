# Host: localhost  (Version: 5.5.53)
# Date: 2018-08-23 21:08:36
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "blog_article"
#

DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned DEFAULT '0' COMMENT '标签ID',
  `title` varchar(100) DEFAULT '' COMMENT '文章标题',
  `desc` varchar(255) DEFAULT '' COMMENT '简述',
  `content` text,
  `created_on` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  `modified_by` varchar(255) DEFAULT '' COMMENT '修改人',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT '状态 0为禁用1为启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章管理';

#
# Data for table "blog_article"
#


#
# Structure for table "blog_auth"
#

DROP TABLE IF EXISTS `blog_auth`;
CREATE TABLE `blog_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '账号',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "blog_auth"
#

INSERT INTO `blog_auth` VALUES (1,'test','test123456');

#
# Structure for table "blog_tag"
#

DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '标签名称',
  `created_on` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `created_by` varchar(100) DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  `modified_by` varchar(100) DEFAULT '' COMMENT '修改人',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT '状态 0为禁用、1为启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章标签管理';

#
# Data for table "blog_tag"
#


#
# Structure for table "follow"
#

DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `followID` int(11) NOT NULL AUTO_INCREMENT,
  `followBy` int(11) NOT NULL,
  `followTo` int(11) NOT NULL,
  `followTime` varchar(255) NOT NULL,
  PRIMARY KEY (`followID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

#
# Data for table "follow"
#

INSERT INTO `follow` VALUES (7,6,5,'2017-09-25 10:15:53.957231'),(9,5,6,'2017-09-25 11:13:03.499015'),(10,7,6,'2017-09-25 15:34:00.040075'),(11,8,6,'2017-09-25 15:46:39.580505'),(12,6,7,'2017-09-25 19:42:57.891789');

#
# Structure for table "likes"
#

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `likeID` int(11) NOT NULL AUTO_INCREMENT,
  `postID` int(11) NOT NULL,
  `likeBy` int(11) NOT NULL,
  `likeTime` varchar(255) NOT NULL,
  PRIMARY KEY (`likeID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

#
# Data for table "likes"
#

INSERT INTO `likes` VALUES (6,9,5,'2017-09-25 16:35:50.840949'),(7,9,6,'2017-09-25 19:10:00.3598');

#
# Structure for table "posts"
#

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `postID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdAt` varchar(255) NOT NULL,
  PRIMARY KEY (`postID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

#
# Data for table "posts"
#

INSERT INTO `posts` VALUES (2,'second','second_content',6,'2017-09-23 10:43:5.941602'),(5,'third','third content..',6,'2017-09-23 11:32:45.941602'),(9,'Hello,','World!!',6,'2017-09-24 19:09:37.024131'),(10,'my title..','my content...',5,'2017-09-25 14:20:35.959114'),(11,'ghalib\'s first title..','and this is content!!!',7,'2017-09-25 15:38:51.705595'),(12,'jkj','kj',8,'2017-09-25 15:43:24.782827');

#
# Structure for table "profile_views"
#

DROP TABLE IF EXISTS `profile_views`;
CREATE TABLE `profile_views` (
  `viewID` int(11) NOT NULL AUTO_INCREMENT,
  `viewBy` int(11) NOT NULL,
  `viewTo` int(11) NOT NULL,
  `viewTime` varchar(255) NOT NULL,
  PRIMARY KEY (`viewID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

#
# Data for table "profile_views"
#

INSERT INTO `profile_views` VALUES (14,6,5,'2017-09-25 10:49:21.373119'),(15,5,6,'2017-09-25 11:13:01.246732'),(16,5,6,'2017-09-25 11:13:03.912177'),(17,5,6,'2017-09-25 11:13:11.465508'),(18,6,5,'2017-09-25 11:30:52.987842'),(19,7,6,'2017-09-25 15:33:58.973987'),(20,7,6,'2017-09-25 15:34:00.460281'),(21,8,6,'2017-09-25 15:46:37.855424'),(22,8,6,'2017-09-25 15:46:40.10399'),(23,6,7,'2017-09-25 19:42:12.359235'),(24,6,7,'2017-09-25 19:42:56.505978'),(25,6,7,'2017-09-25 19:42:58.333437');

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bio` text,
  `joined` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (5,'takkar','takkar@gmail.com','$2a$10$ttnsVDOPgMlA5vvDE33eneqVO3BHE/zif/axxI5AwNpOuRetkxFk6','','2017-09-23 7:02:14.941602'),(6,'faiyaz','faiyaz@gmail.com','$2a$10$.Wx2jBjYPiMFgWGCW.USze.qFMwrgN1TWOf50CQgqHDBzpcYV2uSa','','2017-09-23 1:22:41.941602'),(7,'ghalib','ghalib@gmail.com','$2a$10$ziw6cqTgpSBIvASZOjTheey8sQYf1iW3HW4N.Xjq4GX6faKqzIrE.','','2017-09-23 1:22:41.941602'),(8,'nature','nature@gmail.com','$2a$10$nBi64BlbJMlzuSJfOhPlXevwdCgHOXKLZQUbJQ1q2Y7Ltbpaf1Woa','','2017-09-25 15:43:08.675349');
