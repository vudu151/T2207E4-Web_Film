package org.example.film.usercontroller.service.movies;

import org.example.film.models.entities.Movies;

import java.util.List;
import java.util.Optional;

public interface IMovies2Service {
    List<Movies> getListMovies();
    Optional<Movies> getMovieById(String id);
}
