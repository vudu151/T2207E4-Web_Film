package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.*;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.directors.IDirectorsService;
import org.example.film.services.genres.IGenresService;
import org.example.film.services.jobs.IJobsService;
import org.example.film.services.jobs.JobsService;
import org.example.film.services.movies.IMoviesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Controller
@RequiredArgsConstructor
@RequestMapping("/director")
public class DirectorUserController {
    public final IDirectorsService iDirectorsService;
    public final IMoviesService iMoviesService;
    public final ICelebritiesService iCelebritiesService;
    public final IJobsService iJobsService;
    private final IGenresService iGenresService;

    @GetMapping("/get/")
    public String getDirector(@RequestParam(name = "page", defaultValue = "1") int page,
                              @RequestParam(name = "size", defaultValue = "2") int size,
                              @RequestParam(defaultValue = "") String keyword,
                              @RequestParam(defaultValue = "") String genres,
                              @RequestParam( defaultValue = "1800") int yearfrom,
                              @RequestParam(  defaultValue = "3100") int yearto,
                              Model model){
        List<Director> getListDirector = iDirectorsService.getAllDirector().stream().filter(d -> d.getStatus() == 1).toList();
        List<Job> jobsList = iJobsService.getListJobs();
        List<Genre> genreList = iGenresService.getListGenres();
        int startIndex = (page - 1) * size;
        int endIndex = Math.min(startIndex + size, getListDirector.size());
        List<Director> paginatedListDirector = getListDirector.subList(startIndex, endIndex);
        model.addAttribute("getListDirector", paginatedListDirector);
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size); // Thay size bằng giá trị phù hợp từ controller của bạn
        model.addAttribute("totalPages", (int) Math.ceil((double) getListDirector.size() / size));
        model.addAttribute("keyword", keyword);
        model.addAttribute("genres", genres);
        model.addAttribute("jobsList", jobsList);
        model.addAttribute("yearfrom", yearfrom);
        model.addAttribute("yearto", yearto);
        model.addAttribute("genreList", genreList);
        return "public/directors/list-director";
    }

    @GetMapping("/{id}")
    public String getDirectorId(@PathVariable String id,
                              @RequestParam(name = "page", defaultValue = "1") int page,
                              @RequestParam(name = "size", defaultValue = "2") int size,
                              Model model){
        Director director = iDirectorsService.getDirector(id);
        List<Director> getDirectorMovie = iDirectorsService.getDirectorByMovie(director.getMovies())
                .stream().filter(m -> m.getStatus() == 1)
                .collect(Collectors.toList());
        Movies getMovie = iMoviesService.getMovieById(director.getMovies().getId()).get();
        Celebrity getCelebrity = iCelebritiesService.getCelebrityById(director.getCelebrity().getId()).get();
        int startIndex = (page - 1) * size;
        int endIndex = Math.min(startIndex + size, getDirectorMovie.size());
        List<Director> paginatedListDirectors = getDirectorMovie.subList(startIndex, endIndex);
        model.addAttribute("getDirectorMovies",paginatedListDirectors);

        model.addAttribute("currentPage", page);
        model.addAttribute("size", size); // Thay size bằng giá trị phù hợp từ controller của bạn
        model.addAttribute("totalPages", (int) Math.ceil((double) getDirectorMovie.size() / size));
        model.addAttribute("getCelebrity",getCelebrity);
        model.addAttribute("getMovie",getMovie);
        return "public/directors/director-movie";
    }

}
