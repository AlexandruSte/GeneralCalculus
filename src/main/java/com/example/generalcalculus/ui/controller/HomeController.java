package com.example.generalcalculus.ui.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
@Scope("session")
public class HomeController {

    @GetMapping(value = {"/", ""})
    public String index(HttpSession session, ModelMap modelMap){
        session.setMaxInactiveInterval(7200);
        modelMap.put("id",session.getId());
        modelMap.put("time",session.getMaxInactiveInterval());
        modelMap.put("active",session.getCreationTime());
        return "index";
    }
}
