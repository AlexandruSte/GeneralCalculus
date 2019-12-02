package com.example.generalcalculus.ui.controller;

import com.example.generalcalculus.database.models.Score;
import com.example.generalcalculus.database.models.User;
import com.example.generalcalculus.database.repositories.ScoreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value="/dashboard")
public class DashboardController {

    @Autowired
    ScoreRepository scoreRepository;

    @GetMapping(value={"","/"})
    public String dashboard(){
        return "dashboard";
    }

    @GetMapping(value="/details")
    public String getResults(@RequestParam(value="operation") String operation,
                             ModelMap modelMap,
                             HttpSession session){

        operation = operation.substring(0,operation.length()-1);
        List<Score> scores;
        User user = (User)session.getAttribute("user");
        scores = scoreRepository.findByUserAndOperationOrderByDateDesc(user, operation);
        modelMap.put("scores",scores);


        scores = scoreRepository.findFirst10ByUserAndOperationOrderByAvgTime(user, operation);
        modelMap.put("bestScores",scores);

        return "tableResults";
    }
}
