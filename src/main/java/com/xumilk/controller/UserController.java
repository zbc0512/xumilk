package com.xumilk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xumilk.dao.UserDao;
import com.xumilk.model.User;

@Controller
public class UserController {

    //@Autowired
    //private UserDao userDao;

    @RequestMapping("/join")
    public String join(User user, HttpSession session) {

        return "user/join";
    }

    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String join_do(User user, HttpServletRequest request) {
        HttpSession session = request.getSession();
        String rePassword = request.getParameter("rePassword");
        user.setUserName(request.getParameter("userName"));
        user.setPassword(request.getParameter("password"));
        UserDao userDao = new UserDao();
        String result = userDao.addUser(user);
        if ("done".equals(result)) {
            session.setAttribute("user", user);
            return "hello";
        }
        return "user/join";
    }

    @RequestMapping("/login")
    public String login(User user, HttpSession session) {
        return "user/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login_do(User user, HttpServletRequest request) {
        Logger logger = LoggerFactory.getLogger(UserController.class);
        logger.info("UserController.login");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        UserDao userDao = new UserDao();
        user = userDao.getUserByName(userName);
        HttpSession session = request.getSession();
        if (user != null && password.equals(user.getPassword())) {
            session.setAttribute("user", user);
            return "hello";
        }
        return "user/login";
    }

    @RequestMapping("/logout")
    public String logout(User user, HttpSession session) {
        session.invalidate();
        return "user/logout";
    }

    @RequestMapping(value = "/checkUserName", method = RequestMethod.GET)
    public String checkUserName(User user, HttpServletRequest request, HttpServletResponse response) {
        UserDao userDao = new UserDao();
        user = userDao.getUserByName(request.getParameter("userName"));
        if (user.getUserName() != null && request.getParameter("userName").equals(user.getUserName())) {
            return "user/login";
        }
        return "user/login";
    }

}
