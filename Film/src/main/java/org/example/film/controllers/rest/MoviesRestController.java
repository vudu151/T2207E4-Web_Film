package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.apis.movieApi.AddMovieApiRequest;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.movies.AddMovieRequest;
import org.example.film.models.requests.movies.DeleteMovieRequest;
import org.example.film.models.requests.movies.EditMovieRequest;
import org.example.film.services.categoriesMovies.ICategoriesMoviesService;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/movies")
public class MoviesRestController {
    @Autowired
    private ISender iSender;

    @Autowired
    private IMoviesService iMoviesService;

    @Autowired
    private ICategoriesMoviesService iCategoriesMoviesService;

    @GetMapping
    public ResponseEntity<List<Movies>> getListMovies(){
        var result = iMoviesService.getListMovies();
        return ResponseEntity.ok(result);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Movies>> getMovieById(@PathVariable String id){
        try {
            Optional<Movies> getMovie = iMoviesService.getMovieById(id);
            if (getMovie.isPresent()){
                return ResponseEntity.ok(getMovie);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @GetMapping("/category/{id}")
    public ResponseEntity<List<Movies>> getMovieByCategoryId(@PathVariable String id){
        try {
            List<Movies> getMovie = iMoviesService.getCategoryByMovieid(iCategoriesMoviesService.getCategoryMovieById(id).get());
            if (!getMovie.isEmpty()){
                return ResponseEntity.ok(getMovie);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @GetMapping("/genre/{id}")
    public ResponseEntity<List<Movies>> getMovieByGenresId(@PathVariable List<String> id){
        try {
            List<Movies> getMovie = iMoviesService.getMoviesGenres(id);
            if (!getMovie.isEmpty()){
                return ResponseEntity.ok(getMovie);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @PostMapping("/add")
    public ResponseEntity<String> add (@Valid @RequestBody AddMovieRequest addMovieRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addMovieRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add movies: " + e.getMessage());
        }
    }

    @PostMapping("/api/add")
    public ResponseEntity<String> add (@Valid @RequestBody AddMovieApiRequest addMovieApiRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addMovieApiRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add movies: " + e.getMessage());
        }
    }

    @PutMapping("/edit")
    public ResponseEntity<String> edit(@Valid @RequestBody EditMovieRequest editMovieRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(editMovieRequest);
            return ResponseEntity.ok(String.valueOf(result.orThrow()));
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to edit movies: " + e.getMessage());
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String>delete(@PathVariable String id){
        if (id == null) {
            throw new IllegalArgumentException("Id is null.");
        }else {
            iSender.send(new DeleteMovieRequest(id));
            return ResponseEntity.ok("Delete movie successfully.");
        }
    }
}
