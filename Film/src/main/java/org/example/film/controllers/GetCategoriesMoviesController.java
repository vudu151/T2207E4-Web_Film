package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.services.categoriesMovies.ICategoriesMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class GetCategoriesMoviesController {
    @Autowired
    private ICategoriesMoviesService iCategoriesMoviesService;
    @GetMapping("/getCategories")
    public String getListCategoryMovie(Model model){
        List<CategoryMovie> categoryMovieList = iCategoriesMoviesService.getListCategoriesMovies();
        model.addAttribute("categoryMovieList",categoryMovieList);
        return "public/layout/header";
    }

    

}
