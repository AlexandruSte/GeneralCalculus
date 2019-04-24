package com.example.generalcalculus.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
//@RequestMapping("")
public class CalculController {


    private boolean modified = false;
    private int correct = 0;
    private int total = 0;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getIndex(){
        return "calculus";
    }

    @RequestMapping(value = "/results", method = RequestMethod.POST)
    public String controllerMethod(@RequestParam(value="myArray[]") String[] myArray,
                                   @RequestParam(value="myArray1[]") String[] myArray1){
        int correctValues = 0;
        for(int i=0; i<myArray.length;i++)
            if(myArray[i].equals(myArray1[i]))
                correctValues++;
        correct = correctValues;
        total = myArray.length;
        modified = true;
        return "success";
    }

    @RequestMapping(value = "/success", method = RequestMethod.GET)
    public String success(ModelMap model)
    {
        if(modified){
            model.addAttribute("correct",correct);
            model.addAttribute("responses",total);
            model.addAttribute("ok","1");
        }
        else{
            model.addAttribute("ok","0");
        }
        modified = false;
        return "success";
    }
}
