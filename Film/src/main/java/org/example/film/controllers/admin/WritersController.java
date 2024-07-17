package org.example.film.controllers.admin;

import org.example.film.models.entities.Actors;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Writers;
import org.example.film.models.requests.actors.AddActorRequest;
import org.example.film.models.requests.actors.EditActorRequest;
import org.example.film.models.requests.writers.AddWriterRequest;
import org.example.film.models.requests.writers.EditWriterRequest;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.movies.IMoviesService;
import org.example.film.services.writers.IWritersService;
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

    @Autowired
    private IWritersService iWritersService;
    @GetMapping("/")
    public String list(Model model){
        List<Writers> writerList = iWritersService.getAllWriters();
        model.addAttribute("writerList",writerList);
        return "/admin/writers/list";
    }
    @GetMapping("/add")
    public String add(Model model, AddWriterRequest addWriterRequest){
        model.addAttribute("addWriterRequest",addWriterRequest);
        List<Movies> moviesList = iMoviesService.getListMovies();
        model.addAttribute("moviesList",moviesList);
        List<Celebrity> celebrityList = iCelebritiesService.getListCelebrities();
        model.addAttribute("celebrityList",celebrityList);
        return "admin/writers/add";
    }

    @GetMapping("/edit")
    public String edit(Model model, EditWriterRequest editWriterRequest){
        List<Celebrity> getCelebrity = iCelebritiesService.getListCelebrities();
        List<Movies> getMovies = iMoviesService.getListMovies();
        model.addAttribute("editWriterRequest",editWriterRequest);
        model.addAttribute("getCelebrity",getCelebrity);
        model.addAttribute("getMovies",getMovies);
        return "admin/writers/edit";
    }
}
