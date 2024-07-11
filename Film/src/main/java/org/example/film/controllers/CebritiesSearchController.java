package org.example.film.controllers;

import lombok.AllArgsConstructor;
import org.example.film.models.entities.Genre;
import org.example.film.models.entities.Job;
import org.example.film.models.entities.procedure.cebritiesp;
import org.example.film.models.entities.procedure.moviesp;
import org.example.film.services.celebrities.CelebritiesService;
import org.example.film.services.jobs.JobsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Controller
@AllArgsConstructor
@RequestMapping("/castfind")
public class CebritiesSearchController {
    private final CelebritiesService celebritiesService;
    private final JobsService jobsService;

    @GetMapping
    public String getcebritiPage(
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "5") int pageSize,
            @RequestParam(defaultValue = "") String keyword,
            @RequestParam(defaultValue = "") String letter,
            @RequestParam(defaultValue = "") String job,
            @RequestParam( defaultValue = "1700") int yearfrom,
            @RequestParam(  defaultValue = "3100") int yearto,
            Model model
    ) {
        List<cebritiesp> movies  = celebritiesService.GetCebrityPage(page,pageSize,keyword,letter,job,yearfrom,yearto);
        List<Job>  jobsList = jobsService.getListJobs(); // Retrieve all job from the database
        List<String> letterList = IntStream.rangeClosed('A', 'Z')
                .mapToObj(i -> String.valueOf((char) i))
                .collect(Collectors.toList());
        model.addAttribute("movies", movies );
        model.addAttribute("totalPages",  movies.get(0).getTotalpages() != null ? movies.get(0).getTotalpages() : 1
//                    movies.isEmpty() ? 1 : movies.get(0).getTotalpages()

        );
        model.addAttribute("totalElements",movies.get(0).getTotalitems() != null ? movies.get(0).getTotalitems() : 0
//                    movies.isEmpty() ? 0 : movies.get(0).getTotalitems()

        );
        model.addAttribute("pageSize", pageSize);
        model.addAttribute("currentPages", page);
        model.addAttribute("keyword", keyword);
        model.addAttribute("letter", letter);
        model.addAttribute("letterList", letterList);
        model.addAttribute("job", job);
        model.addAttribute("jobsList", jobsList);
        model.addAttribute("yearfrom", yearfrom);
        model.addAttribute("yearto", yearto);

        return "public/celebritiessearch/index";
        }

}
