package org.example.film.controllers.admin;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.casting.AddCastingRequest;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.jobs.IJobsService;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin-casting")
public class CastsController {

    @Autowired
    private IMoviesService iMoviesService;

    @Autowired
    private ICelebritiesService iCelebritiesService;

    @Autowired
    private IJobsService iJobsService;

    @GetMapping("/add")
    public String add(Model model, AddCastingRequest addCastingRequest){
        model.addAttribute("addCastingRequest",addCastingRequest);
        List<Movies> moviesList = iMoviesService.getListMovies();
        model.addAttribute("moviesList",moviesList);
        List<Celebrity> celebrityList = iCelebritiesService.getListCelebrities();
        model.addAttribute("celebrityList",celebrityList);
        List<Job> jobList = iJobsService.getListJobs();
        model.addAttribute("jobList",jobList);
        return "admin/castings/add";
    }
}
