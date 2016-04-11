DROP TABLE xu_user;
CREATE TABLE xu_user ( user_id INT(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID', user_name varchar(50) COMMENT '用户名', password varchar(50) COMMENT '密码', real_name varchar(50) COMMENT '真实姓名', mobile varchar(50) COMMENT '手机', email varchar(50) COMMENT '邮箱', sex varchar(1) COMMENT '性别', PRIMARY KEY USING BTREE (user_id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';
insert into xu_user (user_id, user_name, password, real_name, mobile, email, sex) values (1601, 'zbc', 'zbc', 'zbc', '186', 'zbc@xumilk.com', '男');
