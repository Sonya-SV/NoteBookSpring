package com.training.spring.notebook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class PageController {

    @RequestMapping("api")
    public String mainPage() {
        return "index.html";
    }

    @RequestMapping("/form")
    public String regForm() {
        return "reg_form";
    }

    @RequestMapping("all_users")
    public String showUsers() {
        return "users/users.html";
    }
}
