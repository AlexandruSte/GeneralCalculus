package com.example.generalcalculus.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/progress")
public class ProgressController {

    @GetMapping(value = {"","/"})
    public String getProgress(){
        return "progress";
    }
}
