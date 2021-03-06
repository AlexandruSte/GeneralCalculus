package com.example.generalcalculus.ui.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Scope("session")
public class HomeController {

    @GetMapping(value = {"/", ""})
    public String index() {
        return "index";
    }
}
