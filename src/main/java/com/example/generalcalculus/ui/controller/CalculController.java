package com.example.generalcalculus.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
//@RequestMapping("/")
public class CalculController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getIndex(){
        return "calculus";
    }

    @RequestMapping(value = "/results", method = RequestMethod.POST)
    @ResponseBody
    public String controllerMethod(@RequestParam(value="myArray[]") String[] myArray,
                                   @RequestParam(value="myArray1[]") String[] myArray1,
                                   ModelMap model){
        int correctValues = 0;
        for(int i=0; i<myArray.length;i++)
            if(myArray[i].equals(myArray1[i]))
                correctValues++;
        model.addAttribute("correct",correctValues);
        model.addAttribute("responses",myArray.length);

        return "redirect:/success";
    }

    @RequestMapping(value = "/success", method = RequestMethod.GET)
    public String success(ModelMap model)
    {
        return "success";
    }
}
