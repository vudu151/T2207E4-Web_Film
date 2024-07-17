package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Actors;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.actors.AddActorRequest;
import org.example.film.models.requests.actors.DeleteActorRequest;
import org.example.film.models.requests.actors.EditActorRequest;
import org.example.film.models.requests.casting.AddCastingRequest;
import org.example.film.models.requests.categoies.DeleteCategoriesRequest;
import org.example.film.services.actors.ActorService;
import org.example.film.services.actors.IActorService;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/v1/actors")
@RequiredArgsConstructor
public class ActorsRestController {
    @Autowired
    private ISender iSender;

    @Autowired
    private IMoviesService iMoviesService;

    @Autowired
    private IActorService iActorService;

    @Autowired
    private ActorService actorService;

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Actors>> getActorById(@PathVariable String id){
        try {
            Optional<Actors> getActor = Optional.ofNullable(iActorService.getActorById(id));
            if (getActor.isPresent()){
                return ResponseEntity.ok(getActor);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    @GetMapping("/movie/{id}")
    public ResponseEntity<List<Actors>> getActorByMovieId(@PathVariable String id){
        try {
            Optional<Movies> getMovie = iMoviesService.getMovieById(id);
            List<Actors> getActorByMovieId = iActorService.getActorByMovieId(getMovie.get());
            if (!getActorByMovieId.isEmpty()){
                return ResponseEntity.ok(getActorByMovieId);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    @PostMapping("/add")
    public ResponseEntity<String> add(@Valid @RequestBody AddActorRequest addActorRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addActorRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add movies: " + e.getMessage());
        }
    }

    @PutMapping("/edit")
    public ResponseEntity<String> edit(@Valid @RequestBody EditActorRequest editActorRequest,BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(editActorRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add actor: " + e.getMessage());
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> delete(@PathVariable String id){
        if (id == null) {
            throw new IllegalArgumentException("Id is null.");
        }else {
            iSender.send(new DeleteActorRequest(id));
            return ResponseEntity.ok("Delete Actors successfully.");
        }
    }
}
