package org.example.film.controllers.admin;

import org.example.film.models.entities.Actors;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.actors.AddActorRequest;
import org.example.film.models.requests.actors.EditActorRequest;
import org.example.film.models.requests.casting.AddCastingRequest;
import org.example.film.services.actors.IActorService;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin-actor")
public class ActorsController {
    @Autowired
    private IMoviesService iMoviesService;

    @Autowired
    private ICelebritiesService iCelebritiesService;

    @Autowired
    private IActorService iActorService;

    @GetMapping("/")
    public String list(Model model){
        List<Actors> actorsList = iActorService.findAllActors();
        model.addAttribute("actorsList",actorsList);
        return "/admin/actors/list";
    }
    @GetMapping("/add")
    public String add(Model model, AddActorRequest addActorRequest){
        model.addAttribute("addActorRequest",addActorRequest);
        List<Movies> moviesList = iMoviesService.getListMovies();
        model.addAttribute("moviesList",moviesList);
        List<Celebrity> celebrityList = iCelebritiesService.getListCelebrities();
        model.addAttribute("celebrityList",celebrityList);
        return "admin/actors/add";
    }

    @GetMapping("/edit")
    public String edit(Model model, EditActorRequest editActorRequest){
        List<Celebrity> getCelebrity = iCelebritiesService.getListCelebrities();
        List<Movies> getMovies = iMoviesService.getListMovies();
        model.addAttribute("editActorRequest",editActorRequest);
        model.addAttribute("getCelebrity",getCelebrity);
        model.addAttribute("getMovies",getMovies);
        return "admin/actors/edit";
    }
}
