package com.example.generalcalculus.ui.controller;

import com.example.generalcalculus.database.models.User;
import com.example.generalcalculus.database.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping()
@Scope("session")
public class LoginController {

    @Autowired
    UserRepository userRepository;

    @GetMapping(value="/login")
    public String login(HttpSession session){

        if(session.getAttribute("user")!=null)
            return "redirect:/";

        return "login";
    }

    @PostMapping(value = "/login")
    public String loginP(@RequestParam(value="username") String username,
                         @RequestParam(value="password") String password,
                         ModelMap modelMap,
                         HttpSession session){

        User user = userRepository.findByUsername(username);

        if(user == null){
            modelMap.put("error","Nume de utilizator inexistent.");
            return "login";
        }

        session.setAttribute("user",user);

        checkSession(session);

        return "redirect:/";
    }

    @GetMapping(value="/register")
    public String register(HttpSession session){

        if(session.getAttribute("user")!=null)
            return "redirect:/";

        return "register";
    }

    @PostMapping(value = "/register")
    public String registerP(@RequestParam(value="username") String username,
                            @RequestParam(value="password") String password,
                            @RequestParam(value="cpassword") String confirmation,
                            ModelMap modelMap,
                            HttpSession session){

        User user = userRepository.findByUsername(username);

        if(user != null){
            modelMap.put("error","Acest nume de utilizator exista deja.");
            return "register";
        }

        if(!password.equals(confirmation)){
            modelMap.put("error","Parolele nu sunt compatibile.");
            return "register";
        }

        user = new User();
        user.setPassword(password);
        user.setUsername(username);
        userRepository.save(user);

        session.setAttribute("acccreated","Your account has been created! You may login now.");

        checkSession(session);

        return "index";
    }

    @GetMapping(value = "/logout")
    public String logout(HttpSession session,
                         ModelMap modelMap){

        session.removeAttribute("user");
        checkSession(session);
        session.setAttribute("logout","You have been logged out of the application.");
        return "redirect:/";
    }

    private void checkSession(HttpSession session){
        if(session.getAttribute("acccreated") != null)
            session.removeAttribute("acccreated");

        if(session.getAttribute("logout") != null)
            session.removeAttribute("logout");
    }
}
