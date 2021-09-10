-- 建表语句

-- 商品表
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id,自增主键',
 `name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
 `code` varchar(255) NOT NULL DEFAULT '' COMMENT '商品编号',
 `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '产品说明',
 `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否被删除（1=是；0=否）',
 `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时
间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE
CURRENT_TIMESTAMP COMMENT '更新时间',
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='商品表';


-- 商品库存表
DROP TABLE IF EXISTS `tb_stock`;
CREATE TABLE `tb_stock` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '库存id,自增主键',
 `product_id` bigint(20) NOT NULL DEFAULT -1 COMMENT '产品id',
 `total_nums` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品库存总数量',
 `frozen_nums` bigint(20) NOT NULL DEFAULT 0 COMMENT '冻结库存总数量（活动预留）',
 `active_nums` bigint(20) NOT NULL DEFAULT 0 COMMENT '活跃库存总数量',
 `deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除（1=是；0=否）',
 `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时
间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE
CURRENT_TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='商品库存表';

-- 活动信息表
DROP TABLE IF EXISTS `tb_activity_info`;
CREATE TABLE `tb_activity_info` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '秒杀活动id，自增主键id',
 `product_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品id',
 `price` int(11) NOT NULL DEFAULT 0 COMMENT '商品价格',
 `nums` int(11) NOT NULL DEFAULT 0 COMMENT '参与活动商品数量',
 `start_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '秒杀开始
时间',
 `end_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '秒杀结束时
间',
 `deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除（1=是；0=否）',
 `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时
间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE
CURRENT_TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='活动信息表';

-- 订单表
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增主键',
 `order_no` varchar(50) NOT NULL DEFAULT -1 COMMENT '秒杀成功生成的订单编号',
 `product_id` bigint(20) NOT NULL DEFAULT -1 COMMENT '商品id',
 `activity_id` bigint(20) NOT NULL DEFAULT -1 COMMENT '秒杀活动id',
 `user_id` bigint(20) NOT NULL DEFAULT -1 COMMENT '用户id',
 `status` tinyint(4) NOT NULL DEFAULT -1 COMMENT '秒杀结果: -1无效 0成功(待付款) 
1完成（已付款） 2已取消',
 `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时
间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE
CURRENT_TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='订单表';


-- 用户信息表
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id，自增主键',
 `user_name` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT
'用户名',
 `password` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT
'密码',
 `phone_number` varchar(50) NOT NULL DEFAULT '' COMMENT '手机号',
 `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '邮
箱',
 `deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除（1=是；0=否）',
 `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '创建时
间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE
CURRENT_TIMESTAMP COMMENT '修改时间',
 PRIMARY KEY (`id`),
 UNIQUE KEY `idx_user_name` (`user_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='用户信息表';