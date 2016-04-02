package com.xumilk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xumilk.dao.UserDao;
import com.xumilk.model.User;

@Controller
public class UserController {

    @RequestMapping("/join")
    public String join(User user, HttpSession session) {

        return "user/join";
    }

    @RequestMapping("/login")
    public String login(User user, HttpSession session) {
        return "user/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login_do(User user, HttpServletRequest request) {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        UserDao userDao = new UserDao();
        user = userDao.getUserByName(request.getParameter("userName"));
        HttpSession session = request.getSession();
        if (password.equals(user.getPassword())) {
            session.setAttribute("user", user);
            return "hello";
        }
        return "user/login";
    }

    @RequestMapping("/logout")
    public String logout(User user, HttpSession session) {

        return "user/logout";
    }

    @RequestMapping(value = "/checkUserName")
    public String checkUserName(User user, HttpServletRequest request, HttpServletResponse response) {
        System.out.println(request.getParameter("userName"));
        UserDao userDao = new UserDao();
        user = userDao.getUserByName(request.getParameter("userName"));
        System.out.println(user.getUserName());
        if (user.getUserName() != null && request.getParameter("userName").equals(user.getUserName())) {
            return "user/login";
        }
        return "user/login";
    }

}
