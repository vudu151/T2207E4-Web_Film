package org.example.film.usercontroller.restcontroller;

import org.example.film.models.entities.Episode;
import org.example.film.models.entities.Movies;
import org.example.film.usercontroller.service.episodes.EpisodesService;
import org.example.film.usercontroller.service.movies.Movies2Service2;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
@RequestMapping("/api/public/movies")
public class movieuserrestcontroller {
    private final Movies2Service2 movieService;
    private final EpisodesService episodeService;

    public movieuserrestcontroller(Movies2Service2 movieService, EpisodesService episodeService) {
        this.movieService = movieService;
        this.episodeService = episodeService;
    }

    @GetMapping
    public List<Movies> listMovies( ) {
       return movieService.getListMovies();
    }

    @GetMapping("/{id}")
    public Movies getMovieDetails(@PathVariable("id") String movie_id) {
      return movieService.getMovieById(movie_id)
                .orElse(null);
    }

    @GetMapping("/{id}/episodes")
    public List<Episode> getEpisodesByMovieId(@PathVariable("id") String movie_id) {
        return episodeService.getEpisodesBymovie_id(movie_id);
    }
}
