package org.example.film.controllers.rest;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.ISender;
import org.example.film.configurations.securities.CustomUserDetails;
import org.example.film.models.entities.Account;
import org.example.film.models.entities.Favourites;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.favourites.AddFavouritesRequest;
import org.example.film.services.favourites.IFavouritesService;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/favouritesMovies")
public class FavouritesMoviesRestController {
    @Autowired
    private ISender iSender;

    @Autowired
    private IFavouritesService iFavouritesService;

    @Autowired
    private IMoviesService iMoviesService;

    @GetMapping("/{accountId}")
    public ResponseEntity<List<Favourites>> getFavouritesAccount(@PathVariable String accountId) {
        try {
            List<Favourites> favouritesList = iFavouritesService.getListFavouritesAccount(accountId);
            if (!favouritesList.isEmpty()){
                return ResponseEntity.ok(favouritesList);
            } else {
                return ResponseEntity.notFound().build();
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    @PostMapping("/add")
    public ResponseEntity<String> add (@Valid @RequestBody AddFavouritesRequest addFavouritesRequest, BindingResult bindingResult){
        if(bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body("Invalid data.");
        }
        try {
            var result = iSender.send(addFavouritesRequest);
            return ResponseEntity.ok(result.orThrow());
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add movies: " + e.getMessage());
        }
    }
}
