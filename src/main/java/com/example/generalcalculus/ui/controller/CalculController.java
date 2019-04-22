package com.example.generalcalculus.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Controller
//@RequestMapping("")
public class CalculController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getIndex(){
        return "calculus";
    }
}
