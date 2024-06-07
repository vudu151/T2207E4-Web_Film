package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.example.film.models.requests.celebrity.AddCelebrityRequest;
import org.example.film.models.requests.celebrity.EditCelebrityRequest;
import org.example.film.services.celebrity.ICelebritiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/celebrities")
public class CelebritiesRestController {
    @Autowired
    private ISender iSender;
    @Autowired
    private ICelebritiesService iCelebritiesService;

    @GetMapping
    public ResponseEntity<List<Celebrity>> getListCelebrities(){
        var result = iCelebritiesService.getListCelebrities();
        return ResponseEntity.ok(result);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Celebrity>> getCelebrityById(@PathVariable String id){
        try {
            Optional<Celebrity> celebrity = iCelebritiesService.getCelebrityById(id);
            if(celebrity.isPresent()) {
                return ResponseEntity.ok(celebrity);
            } else {
                return ResponseEntity.notFound().build();
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @PostMapping("/add")
    public ResponseEntity<String> add(@Valid @RequestBody AddCelebrityRequest addCelebrityRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try{
            var result = iSender.send(addCelebrityRequest);
            return ResponseEntity.ok(result.orThrow());
        } catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add celebrity: " + e.getMessage());
        }
    }

    @PutMapping("/edit")
    public ResponseEntity<String> edit(@Valid @RequestBody EditCelebrityRequest editCelebrityRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try{
            var result = iSender.send(editCelebrityRequest);
            return ResponseEntity.ok(result.orThrow());
        } catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to edit celebrity: " + e.getMessage());
        }
    }
}
