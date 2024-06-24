package org.example.film.services.categoriesMovies;

import org.example.film.models.entities.CategoryMovie;

import java.util.List;
import java.util.Optional;

public interface ICategoriesMoviesService {
    List<CategoryMovie> getListCategoriesMovies();
    Optional<CategoryMovie> getCategoryMovieById(String id);
}
