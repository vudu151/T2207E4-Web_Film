package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.services.celebrities.CelebritiesService;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.jobs.IJobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.service.annotation.GetExchange;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/jobs")
public class JobsUserController {
    @Autowired
    private IJobsService iJobsService;
    @Autowired
    private ICelebrityRepository iCelebrityRepository;

    @GetMapping
    public String index(Model model){
        List<Job> latestJobs = iJobsService.getLatestJobs(3);
        model.addAttribute("latestJobs", latestJobs);
        return "public/layout/header";
    }

    @GetMapping("/{slug}")
    public String getCelebritiesByJob(@PathVariable String slug, Model model) {
        List<Celebrity> celebrities = iCelebrityRepository.findByJobs_Slug(slug);
        model.addAttribute("celebrities", celebrities);
        return "public/celebrities/index";
    }

}
