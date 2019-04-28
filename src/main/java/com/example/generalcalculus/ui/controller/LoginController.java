package com.example.generalcalculus.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping()
public class LoginController {

    @GetMapping(value="/login")
    public String login(){
        return "login";
    }

    @PostMapping(value = "/login")
    public String loginP(){
        return "succes";
    }
}
