package com.xumilk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {

    @RequestMapping("/order")
    public String order() {

        return "order";
    }
}
