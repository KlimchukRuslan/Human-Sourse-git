package com.source.controller;

import com.source.entity.User;
import com.source.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BaseController {

    @GetMapping("/my_family/{userId}")
    public String registration(Model model) {

        return "family";
    }
}
