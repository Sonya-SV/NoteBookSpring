package com.training.spring.notebook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @RequestMapping("/api")
    public String mainPage(){
        return "index.html";
    }

    @RequestMapping("/form")
    public String showRegistrationForm(){
        return "reg_form";
    }
}
