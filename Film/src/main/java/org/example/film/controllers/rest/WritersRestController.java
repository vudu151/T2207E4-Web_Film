package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Actors;
import org.example.film.models.entities.Writers;
import org.example.film.models.requests.actors.AddActorRequest;
import org.example.film.models.requests.actors.DeleteActorRequest;
import org.example.film.models.requests.actors.EditActorRequest;
import org.example.film.models.requests.writers.AddWriterRequest;
import org.example.film.models.requests.writers.DeleteWriterRequest;
import org.example.film.models.requests.writers.EditWriterRequest;
import org.example.film.services.movies.IMoviesService;
import org.example.film.services.writers.IWritersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/v1/writers")
@RequiredArgsConstructor
public class WritersRestController {
    @Autowired
    private ISender iSender;
    @Autowired
    private IMoviesService iMoviesService;
    @Autowired
    private IWritersService iWritersService;
    @GetMapping("/{id}")
    public ResponseEntity<Optional<Writers>> getWriterById(@PathVariable String id){
        try {
            Optional<Writers> getWriter = Optional.ofNullable(iWritersService.getWriter(id));
            if (getWriter.isPresent()){
                return ResponseEntity.ok(getWriter);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @PostMapping("/add")
    public ResponseEntity<String> add(@Valid @RequestBody AddWriterRequest addWriterRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addWriterRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add movies: " + e.getMessage());
        }
    }

    @PutMapping("/edit")
    public ResponseEntity<String> edit(@Valid @RequestBody EditWriterRequest editWriterRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(editWriterRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to update writer: " + e.getMessage());
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> delete(@PathVariable String id){
        if (id == null) {
            throw new IllegalArgumentException("Id is null.");
        }else {
            iSender.send(new DeleteWriterRequest(id));
            return ResponseEntity.ok("Delete Writer successfully.");
        }
    }
}
