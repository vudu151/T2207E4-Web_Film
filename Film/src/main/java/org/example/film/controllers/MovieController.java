package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Movies;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@Controller
@RequiredArgsConstructor
@RequestMapping("/movie")

public class MovieController {
    @Autowired
    private IMoviesService iMoviesService;
    @GetMapping("/{id}")
    public String getMovie(Model model, @PathVariable String id){
        Optional<Movies> getMovieId = iMoviesService.getMovieById(id);
        model.addAttribute("getMovieId", getMovieId);
        return "public/movies/movie-detail";
    }
}
