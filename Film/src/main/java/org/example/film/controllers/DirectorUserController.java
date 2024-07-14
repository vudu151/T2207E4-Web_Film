package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Director;
import org.example.film.models.entities.Movies;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.directors.IDirectorsService;
import org.example.film.services.movies.IMoviesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
@RequestMapping("/director")
public class DirectorUserController {
    public final IDirectorsService iDirectorsService;
    public final IMoviesService iMoviesService;
    public final ICelebritiesService iCelebritiesService;
    @GetMapping("/{id}")
    public String getDirector(@PathVariable String id,
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
