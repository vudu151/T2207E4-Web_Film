package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.requests.actors.AddActorRequest;
import org.example.film.models.requests.writers.AddWriterRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/writers")
@RequiredArgsConstructor
public class WritersRestController {
    @Autowired
    private ISender iSender;

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
}
