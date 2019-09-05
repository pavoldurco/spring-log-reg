package com.spring.security.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerClass {

    @RequestMapping("/")
    public String homePage(){
        return "home";
    }

}
