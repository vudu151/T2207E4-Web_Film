package org.example.film.controllers.admin;

import org.example.film.models.entities.Job;
import org.example.film.models.requests.job.AddJobRequest;
import org.example.film.services.job.IJobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin-jobs")
public class JobsController {
    @Autowired
    private IJobsService iJobsService;

    @GetMapping("")
    public String index(Model model){
        List<Job> jobs = iJobsService.getListJobs();
        model.addAttribute("jobs", jobs);
        return "admin/jobs/index";
    }

    @GetMapping("/add")
    public String add(Model model, AddJobRequest addJobRequest){
        model.addAttribute("addJobRequest", addJobRequest);
        return "admin/jobs/add";
    }

    @GetMapping("/edit")
    public String edit(){
        return "admin/jobs/edit";
    }
}
