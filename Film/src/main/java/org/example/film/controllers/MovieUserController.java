package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.*;
import org.example.film.services.actors.IActorService;
import org.example.film.services.castings.ICastingService;
import org.example.film.services.directors.IDirectorsService;
import org.example.film.services.movies.IMoviesService;
import org.example.film.services.writers.IWritersService;
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
    private final IActorService iActorService;
    private final IWritersService iWritersService;
    private final IDirectorsService iDirectorsService;

    @GetMapping("/get/{id}")
    public String getMovie(@PathVariable String id, Model model) {
        Movies getMovieId = iMoviesService.getMovieById(id).get();
        List<String> getImagesMovie = getMovieId.getImages();
        List<Genre> getGenresMovie = getMovieId.getGenreList();
        List<Actors> getActorMovie = iActorService.getActorByMovieId(getMovieId).stream().filter(actors -> actors.getStatus()==1).collect(Collectors.toList());
        List<Movies> relatedMovies = iMoviesService.getCategoryByMovieid(getMovieId.getCategoryMovieId()).stream().filter(movies -> movies.getIsSeries() == getMovieId.getIsSeries()).limit(5).collect(Collectors.toList());
        List<Writers> getWriterMovie = iWritersService.getWritersByMovieId(getMovieId).stream().filter(writers -> writers.getStatus()==1).collect(Collectors.toList());
        List<Director> getDirectorMovie = iDirectorsService.getDirectorByMovie(getMovieId).stream().filter(director -> director.getStatus()==1).collect(Collectors.toList());
        model.addAttribute("relatedMovies",relatedMovies);
        model.addAttribute("getMovieId",getMovieId);
        model.addAttribute("getGenresMovie",getGenresMovie);
        model.addAttribute("getImagesMovie",getImagesMovie);
        model.addAttribute("getActorMovie",getActorMovie);
        model.addAttribute("getWriterMovie",getWriterMovie);
        model.addAttribute("getDirectorMovie",getDirectorMovie);
        return "public/movies/movie-detail";
    }
}
