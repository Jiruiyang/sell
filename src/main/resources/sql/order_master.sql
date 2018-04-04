CREATE TABLE `order_master` (
  `order_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `buyer_name` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '买家名字',
  `buyer_phone` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '买家联系方式',
  `buyer_address` varchar(128) COLLATE utf8mb4_bin NOT NULL COMMENT '买家地址',
  `buyer_openid` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '买家微信地址',
  `order_amount` decimal(8,2) NOT NULL COMMENT '订单金额',
  `order_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '订单状态,默认0 下单',
  `pay_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付状态,默认0 未支付',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`order_id`),
  KEY `idx_buyer_openid` (`buyer_openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='订单表'