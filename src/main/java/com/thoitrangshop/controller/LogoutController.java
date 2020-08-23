package com.thoitrangshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/logout")
public class LogoutController {
    @GetMapping
    public String Logout(HttpSession httpSession){

        httpSession.removeAttribute("name_Session");

//        System.out.println(httpSession.getAttribute("name_Session") +" hello111111");
        return "trangchu";
    }
}
