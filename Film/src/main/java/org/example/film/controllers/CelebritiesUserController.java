package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.services.celebrities.CelebritiesService;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.jobs.IJobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequiredArgsConstructor
@RequestMapping("/celebrities")
public class CelebritiesUserController {
    @Autowired
    private ICelebritiesService iCelebritiesService;

    @GetMapping("/{id}")
    public String celebrities(@PathVariable String id, Model model) throws Exception {
        Optional<Celebrity> optionalCelebrity = iCelebritiesService.getCelebrityById(id);
        if (optionalCelebrity.isEmpty()) {
            throw new Exception("Celebrity not found with id: " + id);
        }
        Celebrity getCelebrity = optionalCelebrity.get();
        model.addAttribute("getCelebrity", getCelebrity);
        return "public/celebrities/celebrity-detail";
    }

    @GetMapping("/search")
    public String searchCelebrity(@RequestParam(value = "name", required = false) String name,
                                          @RequestParam(value = "job", required = false) String job,
                                          Model model){
        List<Celebrity> celebrities = iCelebritiesService.searchByNameAndJob(name, job);
        model.addAttribute("searchCelebrities", celebrities);
        return "public/celebrities/index";
    }
}
