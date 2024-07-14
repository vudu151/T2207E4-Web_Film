package org.example.film.controllers.admin;

import org.example.film.models.apis.movieApi.Movie;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.entities.Episode;
import org.example.film.models.entities.Genre;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.episodes.AddEpisodeRequest;
import org.example.film.models.requests.episodes.EditEpisodeRequest;
import org.example.film.models.requests.movies.AddMovieRequest;
import org.example.film.models.requests.movies.EditMovieRequest;
import org.example.film.services.categoriesMovies.ICategoriesMoviesService;
import org.example.film.services.episodes.IEpisodesService;
import org.example.film.services.genres.IGenresService;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin-movie")
public class MoviesController {
    @Autowired
    private IMoviesService iMoviesService;

    @Autowired
    private ICategoriesMoviesService iCategoriesMoviesService;

    @Autowired
    private IGenresService iGenresService;

    @Autowired
    private IEpisodesService iEpisodesService;

    @GetMapping("")
    public String get(Model model){
        List<Movies> getListMovie = iMoviesService.getListMovies();
        model.addAttribute("getListMovie",getListMovie);
        return "admin/movies/index";
    }

    @GetMapping("/api")
    public String getMovieApi(Model model){
        List<Movie> getListMovie = iMoviesService.getMoviesApi();
        model.addAttribute("getListMovie",getListMovie);
        model.addAttribute("pathImage", "https://img.ophim.live/uploads/movies/");
        return "admin/movies/listApiMovie";
    }

    @GetMapping("/add")
    public String add(Model model, AddMovieRequest addMovieRequest){
        model.addAttribute("addMovieRequest", addMovieRequest);
        List<CategoryMovie> categoryMovieList = iCategoriesMoviesService.getListCategoriesMovies();
        model.addAttribute("categoryMovieList",categoryMovieList);
        List<Genre> genreList = iGenresService.getListGenres();
        model.addAttribute("genreList",genreList);
        return "admin/movies/add";
    }

    @GetMapping("/edit")
    public String edit(Model model, EditMovieRequest editMovieRequest){
        model.addAttribute("editMovieRequest",editMovieRequest);
        List<CategoryMovie> categoryMovieList = iCategoriesMoviesService.getListCategoriesMovies();
        model.addAttribute("categoryMovieList",categoryMovieList);
        List<Genre> genreList = iGenresService.getListGenres();
        model.addAttribute("genreList",genreList);
        return "admin/movies/edit";
    }

    @GetMapping("/episode/add")
    public String addEpisode(Model model, AddEpisodeRequest addEpisodeRequest){
//        Optional<Movies> movies = iMoviesService.getMovieById(id);
//        model.addAttribute("movies",movies);
        model.addAttribute("addEpisodeRequest",addEpisodeRequest);
        return "admin/movies/addEpisode";
    }

    @GetMapping("/episode/list/id={id}")
    public String listEpisodeByMovie (@PathVariable String id, Model model, EditEpisodeRequest editEpisodeRequest){
        List<Episode> getEpisode = iEpisodesService.getEpisodeByMovieId(iMoviesService.getMovieById(id).get());
        model.addAttribute("getEpisode",getEpisode);
        model.addAttribute("editEpisodeRequest",editEpisodeRequest);
        return "admin/movies/listEpisodeByMovie";
    }

}
