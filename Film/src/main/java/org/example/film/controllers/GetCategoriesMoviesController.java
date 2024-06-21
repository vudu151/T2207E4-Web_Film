package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.entities.Genre;
import org.example.film.services.categoriesMovies.ICategoriesMoviesService;
import org.example.film.services.genres.IGenresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
public class GetCategoriesMoviesController {
    @Autowired
    private ICategoriesMoviesService iCategoriesMoviesService;
    @Autowired
    private IGenresService iGenresService;
    @GetMapping("/getCategories")
    public String getListCategoryMovie(Model model){
        List<Genre> genreList = iGenresService.getListGenres();
        List<CategoryMovie> categoryMovieList = iCategoriesMoviesService.getListCategoriesMovies();
        model.addAttribute("genreList",genreList);
        model.addAttribute("categoryMovieList",categoryMovieList);
        return "public/layout/header";
    }

}
