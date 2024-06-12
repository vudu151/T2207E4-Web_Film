package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.repositories.ICelebrityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequiredArgsConstructor
@RequestMapping("/celebrities")
public class CelebritiesUserController {
    @Autowired
    private ICelebrityRepository iCelebrityRepository;

    @GetMapping("")
    public String celebrities(){
        return "public/celebrities/index";
    }

    @GetMapping("/celebrity-detail")
    public String celebrity_detail(){
        return "public/celebrities/celebrity-detail";
    }

}
