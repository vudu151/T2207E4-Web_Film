package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Favourites;
import org.example.film.models.entities.ImagesMovies;
import org.example.film.models.requests.categoriesMovies.EditCategoryMovieRequest;
import org.example.film.models.requests.favourites.AddFavouritesRequest;
import org.example.film.models.requests.imagesMoviesRequest.AddImagesMoviesRequest;
import org.example.film.models.requests.imagesMoviesRequest.EditImagesMoviesRequest;
import org.example.film.services.imagesMovies.AddImagesMoviesService;
import org.example.film.services.imagesMovies.EditImagesMoviesService;
import org.example.film.services.imagesMovies.IImagesMoviesService;
import org.example.film.services.imagesMovies.ImagesMoviesService;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/imagesMovies")
public class ImagesMoviesRestController {
    @Autowired
    private ISender iSender;

    @Autowired
    private AddImagesMoviesService addImagesMoviesService;

    @Autowired
    private EditImagesMoviesService editImagesMoviesService;

    @Autowired
    private IImagesMoviesService iImagesMoviesService;

    @Autowired
    private IMoviesService iMoviesService;

    @GetMapping("/{movieId}")
    public ResponseEntity<List<ImagesMovies>> getListImageMovieByMovieId(@PathVariable String movieId) {
        try {
            List<ImagesMovies> imagesMoviesList = iImagesMoviesService.getListImageMovieByMovieId(iMoviesService.getMovieById(movieId).get());
            if (!imagesMoviesList.isEmpty()){
                return ResponseEntity.ok(imagesMoviesList);
            } else {
                return ResponseEntity.notFound().build();
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    @PostMapping("/add")
    public ResponseEntity<String> add(@Valid @RequestBody AddImagesMoviesRequest addImagesMoviesRequest, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }

        try {
            String result = addImagesMoviesService.handle(addImagesMoviesRequest).orThrow();
            return ResponseEntity.ok(result);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add images for movie: " + e.getMessage());
        }
    }

    @PutMapping("/edit")
    public ResponseEntity<String> EditImagesMovie(@Valid @RequestBody EditImagesMoviesRequest editImagesMoviesRequest, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }

        try {
            String result = editImagesMoviesService.handle(editImagesMoviesRequest).orThrow();
            return ResponseEntity.ok(result);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add images for movie: " + e.getMessage());
        }
    }
}
