package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Episode;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.episodes.AddEpisodeRequest;
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


}
