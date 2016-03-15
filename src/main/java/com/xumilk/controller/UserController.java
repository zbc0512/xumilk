package com.xumilk.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xumilk.entity.User;

@Controller
public class UserController {

    @RequestMapping("/join")
    public String join(User user, HttpSession session) {

        return "user/join";
    }

    @RequestMapping("/login")
    public String login(User user, HttpSession session) {
        System.out.println("login");
        return "user/login";
    }

    @RequestMapping("/logout")
    public String logout(User user, HttpSession session) {

        return "user/logout";
    }

}
