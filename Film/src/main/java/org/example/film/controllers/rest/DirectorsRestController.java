package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Director;
import org.example.film.models.entities.Writers;
import org.example.film.models.requests.directors.AddDirectorRequest;
import org.example.film.models.requests.directors.DeleteDirectorRequest;
import org.example.film.models.requests.directors.EditDirectorRequest;
import org.example.film.models.requests.writers.AddWriterRequest;
import org.example.film.models.requests.writers.DeleteWriterRequest;
import org.example.film.models.requests.writers.EditWriterRequest;
import org.example.film.services.directors.IDirectorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
    @RequestMapping("/v1/directors")
@RequiredArgsConstructor
public class DirectorsRestController {
    @Autowired
    private ISender iSender;

    @Autowired
    private IDirectorsService iDirectorsService;
    @GetMapping("/{id}")
    public ResponseEntity<Optional<Director>> getDirectorById(@PathVariable String id){
        try {
            Optional<Director> getDirector = Optional.ofNullable(iDirectorsService.getDirector(id));
            if (getDirector.isPresent()){
                return ResponseEntity.ok(getDirector);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @PostMapping("/add")
    public ResponseEntity<String> add(@Valid @RequestBody AddDirectorRequest addDirectorRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addDirectorRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add movies: " + e.getMessage());
        }
    }

    @PutMapping("/edit")
    public ResponseEntity<String> edit(@Valid @RequestBody EditDirectorRequest editDirectorRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(editDirectorRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to update Director: " + e.getMessage());
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> delete(@PathVariable String id){
        if (id == null) {
            throw new IllegalArgumentException("Id is null.");
        }else {
            iSender.send(new DeleteDirectorRequest(id));
            return ResponseEntity.ok("Delete Director successfully.");
        }
    }
}
