package com.example.generalcalculus.ui.controller;

import com.example.generalcalculus.models.Score;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@Controller
@RequestMapping(value="/dashboard")
public class DashboardController {

    @GetMapping(value="")
    public String dashboard(){
        return "dashboard";
    }

    @GetMapping(value="/details")
    public String getResults(@RequestParam(value="operation") String operation,
                             ModelMap modelMap){

        Score score = new Score(20,17,16.2,LocalDate.of(2019,4,27),"Expert",operation);
        Score score1 = new Score(20,12,12.2,LocalDate.of(2019, Calendar.APRIL,27),"Expert",operation);

        List<Score> scores = new ArrayList<>();
        scores.add(score);
        scores.add(score);
        scores.add(score);
        scores.add(score);
        scores.add(score);
        scores.add(score);
        scores.add(score);
        scores.add(score);

        if(operation.equals("multiplications"))
            scores.add(new Score(20,20,10,LocalDate.of(2019,2,22),"Medium",operation));

        if(operation.equals("subtractions"))
            modelMap.put("Scores",new ArrayList<Score>());
        else{
            modelMap.put("scores",scores);
            modelMap.put("bestScores",scores);
        }
        return "tableResults";
    }
}
