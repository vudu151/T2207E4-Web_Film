package org.example.film.controllers.admin;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Director;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Writers;
import org.example.film.models.requests.directors.AddDirectorRequest;
import org.example.film.models.requests.directors.EditDirectorRequest;
import org.example.film.models.requests.writers.AddWriterRequest;
import org.example.film.models.requests.writers.EditWriterRequest;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.directors.IDirectorsService;
import org.example.film.services.movies.IMoviesService;
import org.example.film.services.writers.IWritersService;
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

    @Autowired
    private IDirectorsService iDirectorsService;

    @GetMapping("/")
    public String list(Model model){
        List<Director> directorList = iDirectorsService.getAllDirector();
        model.addAttribute("directorList",directorList);
        return "/admin/directors/list";
    }
    @GetMapping("/add")
    public String add(Model model, AddDirectorRequest addDirectorRequest){
        model.addAttribute("addDirectorRequest",addDirectorRequest);
        List<Movies> moviesList = iMoviesService.getListMovies();
        model.addAttribute("moviesList",moviesList);
        List<Celebrity> celebrityList = iCelebritiesService.getListCelebrities();
        model.addAttribute("celebrityList",celebrityList);
        return "admin/directors/add";
    }

    @GetMapping("/edit")
    public String edit(Model model, EditDirectorRequest editDirectorRequest){
        List<Celebrity> getCelebrity = iCelebritiesService.getListCelebrities();
        List<Movies> getMovies = iMoviesService.getListMovies();
        model.addAttribute("editDirectorRequest",editDirectorRequest);
        model.addAttribute("getCelebrity",getCelebrity);
        model.addAttribute("getMovies",getMovies);
        return "admin/directors/edit";
    }
}
