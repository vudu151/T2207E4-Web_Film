package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Job;
import org.example.film.services.jobs.IJobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.service.annotation.GetExchange;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/jobs")
public class JobsUserController {
    @Autowired
    private IJobsService iJobsService;

    @GetMapping
    public String index(Model model){
        List<Job> latestJobs = iJobsService.getLatestJobs(3);
        model.addAttribute("latestJobs", latestJobs);
        return "public/layout/header";
    }
}
