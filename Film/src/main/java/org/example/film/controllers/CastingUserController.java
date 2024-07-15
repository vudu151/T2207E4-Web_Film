package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.*;
import org.example.film.services.actors.IActorService;
import org.example.film.services.castings.ICastingService;
import org.example.film.services.celebrities.ICelebritiesService;
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
@RequestMapping("/casting")
@RequiredArgsConstructor
public class CastingUserController {
    private final IMoviesService iMoviesService;
    private final ICelebritiesService iCelebritiesService;
    private final IActorService iActorService;

    @GetMapping("/get/")
    public String getCasting(@RequestParam(name = "page", defaultValue = "1") int page,
                             @RequestParam(name = "size", defaultValue = "2") int size,
                             Model model){
        List<Actors> getListActors = iActorService.findAllActors().stream().filter(a -> a.getStatus() == 1).toList();
        // Phân trang
        int startIndex = (page - 1) * size;
        int endIndex = Math.min(startIndex + size, getListActors.size());
        List<Actors> paginatedListActors = getListActors.subList(startIndex, endIndex);
        model.addAttribute("getListActors", paginatedListActors);
        // Thêm thông tin phân trang vào model
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size); // Thay size bằng giá trị phù hợp từ controller của bạn
        model.addAttribute("totalPages", (int) Math.ceil((double) getListActors.size() / size));
        return "public/casts/list-casting";
    }

    @GetMapping("/{id}")
    public String getCastingId(@PathVariable String id,
                            @RequestParam(name = "page", defaultValue = "1") int page,
                            @RequestParam(name = "size", defaultValue = "2") int size,
                            Model model){
        Actors getCasting = iActorService.getActorById(id);
        List<Actors> getCastingMovie = iActorService.getActorByCelebrity(getCasting.getCelebrity())
                .stream().filter(m -> m.getStatus()==1)
                .toList();
        Movies getMovie = iMoviesService.getMovieById(getCasting.getMovies().getId()).get();
        Celebrity getCelebrity = iCelebritiesService.getCelebrityById(getCasting.getCelebrity().getId()).get();
        int startIndex = (page - 1) * size;
        int endIndex = Math.min(startIndex + size, getCastingMovie.size());
        List<Actors> paginatedListCasting = getCastingMovie.subList(startIndex, endIndex);
        model.addAttribute("getCastingMovies",paginatedListCasting);
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size); // Thay size bằng giá trị phù hợp từ controller của bạn
        model.addAttribute("totalPages", (int) Math.ceil((double) getCastingMovie.size() / size));
        model.addAttribute("getMovie",getMovie);
        model.addAttribute("getCelebrity",getCelebrity);
        return "public/casts/cast-movie";


    }
}
