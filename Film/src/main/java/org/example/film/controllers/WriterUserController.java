package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.*;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.movies.IMoviesService;
import org.example.film.services.writers.IWritersService;
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
@RequestMapping("/writer")
public class WriterUserController {
    public final IMoviesService iMoviesService;
    public final ICelebritiesService iCelebritiesService;
    public final IWritersService iWritersService;

    @GetMapping("/get/")
    public String getWriter(@RequestParam(name = "page", defaultValue = "1") int page,
                            @RequestParam(name = "size", defaultValue = "2") int size,
                            Model model){
        List<Writers> getAllWriter = iWritersService.getAllWriters();
        int startIndex = (page - 1) * size;
        int endIndex = Math.min(startIndex + size, getAllWriter.size());
        List<Writers> paginatedListWriters = getAllWriter.subList(startIndex, endIndex);
        model.addAttribute("getListWriter", paginatedListWriters);
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size); // Thay size bằng giá trị phù hợp từ controller của bạn
        model.addAttribute("totalPages", (int) Math.ceil((double) getAllWriter.size() / size));
        return "public/writers/list-writer";
    }
    @GetMapping("/{id}")
    public String GetWriterId(@PathVariable String id,
                            @RequestParam(name = "page", defaultValue = "1") int page,
                            @RequestParam(name = "size", defaultValue = "2") int size,
                            Model model){
        Writers getWriter = iWritersService.getWriter(id);

        List<Writers> getWriterMovie = iWritersService.getWriterByCelebrity(getWriter.getCelebrity())
                .stream().filter(w -> w.getStatus() == 1)
                .toList();
        Movies getMovie = iMoviesService.getMovieById(getWriter.getMovies().getId()).get();
        Celebrity getCelebrity = iCelebritiesService.getCelebrityById(getWriter.getCelebrity().getId()).get();

        int startIndex = (page - 1) * size;
        int endIndex = Math.min(startIndex + size, getWriterMovie.size());
        List<Writers> paginatedListWrites = getWriterMovie.subList(startIndex, endIndex);
        model.addAttribute("getWriterMovie",paginatedListWrites);
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size); // Thay size bằng giá trị phù hợp từ controller của bạn
        model.addAttribute("totalPages", (int) Math.ceil((double) getWriterMovie.size() / size));
        model.addAttribute("getMovie",getMovie);
        model.addAttribute("getCelebrity",getCelebrity);
        return "public/writers/writer-movie";
    }
}
