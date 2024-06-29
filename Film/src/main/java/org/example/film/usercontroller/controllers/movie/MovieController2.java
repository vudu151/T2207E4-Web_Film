package org.example.film.usercontroller.controllers.movie;

import org.example.film.models.entities.Episode;
import org.example.film.models.entities.Movies;
import org.example.film.usercontroller.service.episodes.EpisodesService2;
import org.example.film.usercontroller.service.movies.Movies2Service2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/moviess")
public class MovieController2 {

    private final Movies2Service2 movieService;
    private final EpisodesService2 episodeService;

    public MovieController2(Movies2Service2 movieService, EpisodesService2 episodeService) {
        this.movieService = movieService;
        this.episodeService = episodeService;
    }

    @GetMapping
    public String listMovies(Model model) {
        List<Movies> movies = movieService.getListMovies();
        model.addAttribute("movies", movies);
        return "public/movies/lists";
    }

    @GetMapping("/{id}")
    public String getMovieDetails(@PathVariable("id") String movie_id, Model model) {
        Optional<Movies> movieOptional = movieService.getMovieById(movie_id);
        List<Episode> episodes = episodeService.getEpisodesBymovie_id(movie_id);
        if (movieOptional.isPresent()) {
            Movies movie = movieOptional.get();
        model.addAttribute("movie", movie);
            model.addAttribute("episodes", episodes);
        }

        return "public/movies/detail";
    }


}
