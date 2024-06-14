package org.example.film.controllers.admin;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.example.film.models.enums.Country;
import org.example.film.models.requests.celebrities.AddCelebrityRequest;
import org.example.film.models.requests.celebrities.EditCelebrityRequest;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.jobs.IJobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin-celebrities")
public class CelebritiesController {
    @Autowired
    private ICelebritiesService iCelebritiesService;
    @Autowired
    private IJobsService iJobsService;

    @GetMapping("")
    public String index(Model model){
        List<Celebrity> celebrities = iCelebritiesService.getListCelebrities();
        model.addAttribute("celebrities", celebrities);
        return "admin/celebrities/index";
    }

    @GetMapping("/add")
    public String add(Model model, AddCelebrityRequest addCelebrityRequest)
    {
        model.addAttribute("addCelebrityRequest", addCelebrityRequest);
        model.addAttribute("countries", Country.values());
        List<Job> jobs = iJobsService.getListJobs();
        model.addAttribute("jobs", jobs);
        return "admin/celebrities/add";
    }

    @GetMapping("/edit")
    public String edit(Model model, EditCelebrityRequest editCelebrityRequest){
        model.addAttribute("editCelebrityRequest", editCelebrityRequest);
        model.addAttribute("countries", Country.values());
        List<Job> jobs = iJobsService.getListJobs();
        model.addAttribute("jobs", jobs);
        return "admin/celebrities/edit";
    }
}
