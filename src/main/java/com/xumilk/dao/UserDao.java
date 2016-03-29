package com.xumilk.dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.xumilk.model.User;

public class UserDao {
    public User getUserByName(String userName) {
        String resource = "config/mybatis/mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(inputStream);
        SqlSession session = factory.openSession();
        try {
            session = factory.openSession();
            UserMapper mapper = session.getMapper(UserMapper.class);
            User user = mapper.selectBlog(101);
        } catch (Exception e) {

        } finally {
            session.close();
        }
    }
}
