package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.Genre;
import org.example.film.models.requests.categoriesMovies.DeleteCategoryMovieRequest;
import org.example.film.models.requests.genres.AddGenreRequest;
import org.example.film.models.requests.genres.DeleteGenreRequest;
import org.example.film.models.requests.genres.EditGenreRequest;
import org.example.film.services.genres.IGenresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/genres")

public class GenresRestController {
    @Autowired
    private ISender iSender;
    @Autowired
    private IGenresService iGenresService;

    @GetMapping()
    public ResponseEntity<List<Genre>> getListGenre(){
        var result = iGenresService.getListGenres();
        return ResponseEntity.ok(result);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Optional<Genre>> getGenreId(@PathVariable String id){
        try {
            Optional<Genre> genre = iGenresService.getGenreById(id);
            if (genre.isPresent()){
                return ResponseEntity.ok(genre);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);

        }
    }
    @PostMapping("/add")
    public ResponseEntity<String> add (@Valid @RequestBody AddGenreRequest addGenreRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addGenreRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add genre movie: " + e.getMessage());
        }
    }
    @PutMapping("/edit")
    public ResponseEntity<String> edit(@Valid @RequestBody EditGenreRequest editGenreRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }try {
            var result = iSender.send(editGenreRequest);
            return ResponseEntity.ok(String.valueOf(result.orThrow()));
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to edit category movie: " + e.getMessage());
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> delete(@PathVariable String id){
        try {
            HandleResponse<String> response = iSender.send(new DeleteGenreRequest(id));
            if (response.isOk()){
                return ResponseEntity.ok("Delete Genre movies successfully.");
            }else {
                return ResponseEntity.badRequest().body(response.get());
            }
        }catch (Exception e){
            if (e.getMessage().equals("You must delete the movie first")) {
                return ResponseEntity.badRequest().body("You must delete the movie first");
            } else {
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("You must delete the movie first");
            }
        }
    }
}
