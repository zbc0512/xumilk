DROP TABLE user;
CREATE TABLE user ( userId INT(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID', userName varchar(50) COMMENT '用户名', password varchar(50) COMMENT '密码', realName varchar(50) COMMENT '真实姓名', mobile varchar(50) COMMENT '手机', email varchar(50) COMMENT '邮箱', sex varchar(1) COMMENT '性别', PRIMARY KEY USING BTREE (userId) ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';
insert into user (userId, userName, password, realName, mobile, email, sex) values (1601, 'zbc', 'zbc', 'zbc', '186', 'zbc@xumilk.com', '男');
