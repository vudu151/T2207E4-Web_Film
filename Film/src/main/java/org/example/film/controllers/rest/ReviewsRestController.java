package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Reviews;
import org.example.film.models.requests.movies.DeleteMovieRequest;
import org.example.film.models.requests.reviews.AddReviewRequest;
import org.example.film.models.requests.reviews.DeleteReviewRequest;
import org.example.film.models.requests.reviews.UpdateStatusReviewRequest;
import org.example.film.services.movies.IMoviesService;
import org.example.film.services.reviews.IReviewsService;
import org.example.film.services.reviews.ReviewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/reviews")
public class ReviewsRestController {
    @Autowired
    private ISender iSender;

    @Autowired
    private IReviewsService iReviewsService;

    @Autowired
    private ReviewsService reviewsService;

    @Autowired
    private IMoviesService iMoviesService;

    @GetMapping("getAccountMovie/{movieId}")
    public ResponseEntity<List<Reviews>> getEpisodeById(@PathVariable String movieId){
        try {
            List<Reviews> getReviewMovieAndAccount = iReviewsService.getAllReviewByMovie(iMoviesService.getMovieById(movieId).get());
            if (!getReviewMovieAndAccount.isEmpty()){
                return ResponseEntity.ok(getReviewMovieAndAccount);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @GetMapping("/getReview")
    public ResponseEntity<List<Movies>> getReviewMovie(){
        try {
            List<Movies> getReviewMovie = iReviewsService.getAllReviewedMovies();
            if (!getReviewMovie.isEmpty()){
                return ResponseEntity.ok(getReviewMovie);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    @GetMapping("/movies/{id}")
    public ResponseEntity<Double> getMovieRating(@PathVariable String id) {
        double averageRating = reviewsService.getAverageStarByMovieId(id);
        return ResponseEntity.ok(averageRating);
    }

    @PostMapping("/add")
    public ResponseEntity<String> add(@Valid @RequestBody AddReviewRequest addReviewRequest, BindingResult bindingResult){
        if (bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body(getErrorMap(bindingResult).toString());
        }
        try {
            var result = iSender.send(addReviewRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            if (e.getMessage().equals("You have already reviewed it")) {
                return ResponseEntity.badRequest().body("You have already reviewed it");
            } else {
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("You have already reviewed it");
            }
        }
    }

    @PutMapping("/update/status")
    public ResponseEntity<String> updateStatus(@Valid @RequestBody UpdateStatusReviewRequest updateStatusReviewRequest, BindingResult bindingResult){
        if (bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body(getErrorMap(bindingResult).toString());
        }
        try {
            var result = iSender.send(updateStatusReviewRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }

    @DeleteMapping("/deleteReview/{id}")
    public ResponseEntity<String>delete(@PathVariable String id){
        if (id == null) {
            throw new IllegalArgumentException("Id is null.");
        }else {
            iSender.send(new DeleteReviewRequest(id));
            return ResponseEntity.ok("Delete review successfully.");
        }
    }

    private Map<String, String> getErrorMap(BindingResult bindingResult) {
        Map<String, String> errors = new HashMap<>();
        bindingResult.getFieldErrors().forEach(error -> errors.put(error.getField(), error.getDefaultMessage()));
        return errors;
    }
}
