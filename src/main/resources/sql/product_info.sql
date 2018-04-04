CREATE TABLE `product_info` (
  `product_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `product_name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '单价',
  `product_stock` int(11) NOT NULL COMMENT '库存',
  `product_descripion` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `product_icon` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图片',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='商品表'