
-- --初始化数据
-- 商品表
INSERT INTO `tb_product`(name, code, deleted, create_time) VALUES ('iphone12',
'product1', 0, '2020-11-14 21:11:23');
INSERT INTO `tb_product`(name, code, deleted, create_time) VALUES
('AirJordan4', 'product2', 0, '2020-11-04 11:13:23');
INSERT INTO `tb_product`(name, code, deleted, create_time) VALUES ('Tesla',
'product3', 0, '2020-11-09 18:11:23');

-- 商品库存表
INSERT INTO `tb_stock`(product_id, total_nums, frozen_nums, active_nums,
deleted, create_time) VALUES (1, 1000, 0, 0, 0, '2020-11-14 21:11:23');
INSERT INTO `tb_stock`(product_id, total_nums, frozen_nums, active_nums,
deleted, create_time) VALUES (2, 2000, 0, 0, 0, '2020-11-14 21:11:23');
INSERT INTO `tb_stock`(product_id, total_nums, frozen_nums, active_nums,
deleted, create_time) VALUES (3, 3000, 0, 0, 0, '2020-11-14 21:11:23');

-- 活动信息表
INSERT INTO `tb_activity_info`(product_id, price, nums, start_time, end_time,
deleted, create_time) VALUES (1, 1000, 70, '2020-11-14 21:59:07', '2020-11-14
21:59:11', 0, '2020-11-14 21:11:23');
INSERT INTO `tb_activity_info`(product_id, price, nums, start_time, end_time,
deleted, create_time) VALUES (2, 2000, 30, '2020-11-14 21:59:07', '2020-11-14
21:59:11', 0, '2020-11-14 21:11:23');
INSERT INTO `tb_activity_info`(product_id, price, nums, start_time, end_time,
deleted, create_time) VALUES (3, 100000, 2, '2020-11-14 21:59:07', '2020-11-
14 21:59:11', 0, '2020-11-14 21:11:23');

