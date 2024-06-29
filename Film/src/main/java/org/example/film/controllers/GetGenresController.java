package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Genre;
import org.example.film.services.genres.IGenresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.stream.Collectors;

//@Controller
//@RequiredArgsConstructor
//public class GetGenresController {
//    @Autowired
//    private IGenresService iGenresService;
//
//    @GetMapping("/getGenres")
//    public String getListGenres(Model model){
//        List<Genre> genreList = iGenresService.getListGenres();
//        model.addAttribute("genreList",genreList);
//        return "public/layout/header";
//    }
//}
