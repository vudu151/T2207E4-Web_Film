package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.ISender;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.requests.categoriesMovies.AddCategoryMovieRequest;
import org.example.film.models.requests.categoriesMovies.DeleteCategoryMovieRequest;
import org.example.film.models.requests.categoriesMovies.EditCategoryMovieRequest;
import org.example.film.services.categoriesMovies.ICategoriesMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/categoriesMovies")
@RequiredArgsConstructor
public class CategoryMovieRestController {
    @Autowired
    private ISender iSender;

    @Autowired
    private ICategoriesMoviesService iCategoriesMoviesService;

    @GetMapping
    public ResponseEntity<List<CategoryMovie>> getListCategoriesMovies(){
        var result = iCategoriesMoviesService.getListCategoriesMovies();
        return ResponseEntity.ok(result);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<CategoryMovie>> getCategoryMovieId(@PathVariable String id){
        try {
            Optional<CategoryMovie> categoryMovie = iCategoriesMoviesService.getCategoryMovieById(id);
            if (categoryMovie.isPresent()){
                return ResponseEntity.ok(categoryMovie);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    @PostMapping("/add")
    public ResponseEntity<String> add(@Valid @RequestBody AddCategoryMovieRequest addCategoryMovieRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addCategoryMovieRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add category movie: " + e.getMessage());
        }
    }

    @PutMapping("/edit")
    public ResponseEntity<String> edit(@Valid @RequestBody EditCategoryMovieRequest editCategoryMovieRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(editCategoryMovieRequest);
            return ResponseEntity.ok(String.valueOf(result.orThrow()));
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to edit category movie: " + e.getMessage());
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> delete(@PathVariable String id){
        try {
            HandleResponse<String> response = iSender.send(new DeleteCategoryMovieRequest(id));
            if (response.isOk()){
                return ResponseEntity.ok("Delete Category movies successfully.");
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
