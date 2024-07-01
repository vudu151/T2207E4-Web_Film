package org.example.film.controllers.admin;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.directors.AddDirectorRequest;
import org.example.film.models.requests.writers.AddWriterRequest;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin-director")
public class DirectorsController {
    @Autowired
    private IMoviesService iMoviesService;

    @Autowired
    private ICelebritiesService iCelebritiesService;
    @GetMapping("/add")
    public String add(Model model, AddDirectorRequest addDirectorRequest){
        model.addAttribute("addDirectorRequest",addDirectorRequest);
        List<Movies> moviesList = iMoviesService.getListMovies();
        model.addAttribute("moviesList",moviesList);
        List<Celebrity> celebrityList = iCelebritiesService.getListCelebrities();
        model.addAttribute("celebrityList",celebrityList);
        return "admin/directors/add";
    }
}
