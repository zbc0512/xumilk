package com.xumilk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xumilk.model.XUser;

@Controller
public class UserController {

    @RequestMapping("/join")
    public String join(XUser xUser, HttpSession session) {

        return "user/join";
    }

    @RequestMapping("/login")
    public String login(XUser xUser, HttpSession session) {
        return "user/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login_do(XUser xUser, HttpServletRequest request) {
        String userName = request.getParameter("userName");
        String userPasswd = request.getParameter("userPasswd");
        return "user/login";
    }

    @RequestMapping("/logout")
    public String logout(XUser xUser, HttpSession session) {

        return "user/logout";
    }

    @RequestMapping(value = "/checkUserName")
    public String checkUserName(XUser xUser, HttpServletRequest request) {
        System.out.println(request.getParameter("userName"));
        return "user/logout";
    }

}
