package org.example.film.controllers.admin;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.actors.AddActorRequest;
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
@RequestMapping("/admin-writer")
public class WritersController {
    @Autowired
    private IMoviesService iMoviesService;

    @Autowired
    private ICelebritiesService iCelebritiesService;
    @GetMapping("/add")
    public String add(Model model, AddWriterRequest addWriterRequest){
        model.addAttribute("addWriterRequest",addWriterRequest);
        List<Movies> moviesList = iMoviesService.getListMovies();
        model.addAttribute("moviesList",moviesList);
        List<Celebrity> celebrityList = iCelebritiesService.getListCelebrities();
        model.addAttribute("celebrityList",celebrityList);
        return "admin/writers/add";
    }
}
