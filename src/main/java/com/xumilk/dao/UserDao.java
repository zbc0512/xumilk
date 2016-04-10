package com.xumilk.dao;

import org.apache.ibatis.session.SqlSession;

import com.xumilk.model.User;
import com.xumilk.util.DbUtil;

public class UserDao {

    public User getUserByName(String userName) {
        SqlSession sqlSession = null;
        User user = null;
        try {
            sqlSession = DbUtil.getSqlSession("config/mybatis/mybatis-config.xml");
            user = sqlSession.selectOne("userMapper.getUser", userName);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
        return user;
    }

    public String addUser(User user) {
        SqlSession sqlSession = null;
        try {
            sqlSession = DbUtil.getSqlSession("config/mybatis/mybatis-config.xml");
            int result = sqlSession.selectOne("userMapper.addUser", user);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
        return "done";
    }
}
