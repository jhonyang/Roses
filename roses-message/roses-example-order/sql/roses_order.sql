/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : roses_order

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 30/04/2018 23:09:23
*/

DROP DATABASE IF EXISTS roses_order;
CREATE DATABASE IF NOT EXISTS roses_order DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

USE roses_order;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods_order
-- ----------------------------
DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE `goods_order` (
  `id` bigint(20) NOT NULL,
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `count` int(11) NOT NULL COMMENT '数量',
  `sum` decimal(10,0) DEFAULT NULL COMMENT '总金额',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `user_id` bigint(20) NOT NULL COMMENT '下单人id',
  `status` int(11) DEFAULT NULL COMMENT '订单状态：1.未完成    2.已完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';
