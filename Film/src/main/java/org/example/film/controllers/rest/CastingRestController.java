package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Casting;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.casting.AddCastingRequest;
import org.example.film.services.castings.ICastingService;
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
@RequestMapping("/v1/casting")
public class CastingRestController {
    @Autowired
    private ISender iSender;

    @Autowired
    private ICastingService iCastingService;
    @Autowired
    private IMoviesService iMoviesService;

    @GetMapping("/movie/{id}")
    public ResponseEntity<List<Casting>> getMovieById(@PathVariable String id){
        try {
            Optional<Movies> getMovie = iMoviesService.getMovieById(id);
            List<Casting> getCastingByMovie = iCastingService.getCastingByMovie(getMovie.get());
            if (!getCastingByMovie.isEmpty()){
                return ResponseEntity.ok(getCastingByMovie);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    @PostMapping("/add")
    public ResponseEntity<String> add(@Valid @RequestBody AddCastingRequest addCastingRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addCastingRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add movies: " + e.getMessage());
        }
    }
}
