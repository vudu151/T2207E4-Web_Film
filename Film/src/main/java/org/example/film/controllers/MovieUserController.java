package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Genre;
import org.example.film.models.entities.Movies;
import org.example.film.services.movies.IMoviesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
@RequestMapping("/movie")
public class MovieUserController {
    private final IMoviesService iMoviesService;

    @GetMapping("/get/{id}")
    public String getMovie(@PathVariable String id, Model model) {
        Movies getMovieId = iMoviesService.getMovieById(id).get();
        List<String> getImagesMovie = getMovieId.getImages();
        List<Genre> getGenresMovie = getMovieId.getGenreList();
        List<Movies> relatedMovies = iMoviesService.getCategoryByMovieid(getMovieId.getCategoryMovieId()).stream().filter(movies -> movies.getIsSeries() == getMovieId.getIsSeries()).limit(5).collect(Collectors.toList());
        model.addAttribute("relatedMovies",relatedMovies);
        model.addAttribute("getMovieId",getMovieId);
        model.addAttribute("getGenresMovie",getGenresMovie);
        model.addAttribute("getImagesMovie",getImagesMovie);
        return "public/movies/movie-detail";
    }
}
