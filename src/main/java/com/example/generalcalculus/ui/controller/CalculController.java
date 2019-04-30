package com.example.generalcalculus.ui.controller;

import com.example.generalcalculus.database.models.Score;
import com.example.generalcalculus.database.models.User;
import com.example.generalcalculus.database.repositories.ScoreRepository;
import com.example.generalcalculus.database.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;

@Controller
@RequestMapping(value = "/calculus")
public class CalculController {


    private boolean modified = false;
    private int correct = 0;
    private int total = 0;

    @Autowired
    UserRepository userRepository;

    @Autowired
    ScoreRepository scoreRepository;

    @GetMapping(value = {"/",""})
    public String getIndex(){
        return "calculus";
    }

    @PostMapping(value = "/results")
    public String controllerMethod(@RequestParam(value="myArray[]") String[] myArray,
                                   @RequestParam(value="myArray1[]") String[] myArray1,
                                   @RequestParam(value="operations") String operation,
                                   HttpSession session){
        int correctValues = 0;
        for(int i=0; i<myArray.length;i++)
            if(myArray[i].equals(myArray1[i]))
                correctValues++;
        correct = correctValues;
        total = myArray.length;
        modified = true;

        Score score = new Score(total,correct,0,LocalDate.now(),"medium",operation,(User)session.getAttribute("user"));

        scoreRepository.save(score);

        return "success";
    }

    @GetMapping(value = "/success")
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
