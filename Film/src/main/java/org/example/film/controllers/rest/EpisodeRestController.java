package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.apis.episodeApi.AddEpisodeApiRequest;
import org.example.film.models.entities.Episode;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.episodes.AddEpisodeRequest;
import org.example.film.models.requests.episodes.DeleteEpisodeRequest;
import org.example.film.models.requests.episodes.EditEpisodeRequest;
import org.example.film.models.requests.movies.DeleteMovieRequest;
import org.example.film.models.requests.movies.EditMovieRequest;
import org.example.film.services.episodes.IEpisodesService;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/episodes")
public class EpisodeRestController {
    @Autowired
    private ISender iSender;

    @Autowired
    private IEpisodesService iEpisodesService;

    @Autowired
    private IMoviesService iMoviesService;

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Episode>> getEpisodeById(@PathVariable String id){
        try {
            Optional<Episode> getEpisode = iEpisodesService.getEpisodeById(id);
            if (!getEpisode.isEmpty()){
                return ResponseEntity.ok(getEpisode);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }


    @GetMapping("/list/{id}")
    public ResponseEntity<List<Episode>> getEpisodeByMovieId(@PathVariable String id){
        try {
            List<Episode> getEpisode = iEpisodesService.getEpisodeByMovieId(iMoviesService.getMovieById(id).get());
            if (!getEpisode.isEmpty()){
                return ResponseEntity.ok(getEpisode);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @PostMapping("/add")
    public ResponseEntity<String> add(@Valid @RequestBody AddEpisodeRequest addEpisodeRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addEpisodeRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add movies: " + e.getMessage());
        }
    }

    @PostMapping("api/add")
    public ResponseEntity<String> apiAdd(@Valid @RequestBody AddEpisodeApiRequest addEpisodeApiRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addEpisodeApiRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add movies: " + e.getMessage());
        }
    }

    @PutMapping("/edit")
    public ResponseEntity<String> edit(@Valid @RequestBody EditEpisodeRequest editEpisodeRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(editEpisodeRequest);
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
            iSender.send(new DeleteEpisodeRequest(id));
            return ResponseEntity.ok("Delete episode successfully.");
        }
    }




}
