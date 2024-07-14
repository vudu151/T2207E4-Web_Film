package org.example.film.services.movies;

import org.example.film.models.apis.movieApi.Movie;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.entities.Movies;

import java.util.List;
import java.util.Optional;

public interface IMoviesService {
    List<Movies> getListMovies();
    Optional<Movies> getMovieById(String id);
    List<Movies> getCategoryByMovieid(CategoryMovie id);
    List<Movies> getMoviesByCategoryMovie(Movies id);

    List<Movies> getMoviesGenres(List<String> genreList);

    List<Movies> searchMovie(String query);

    List<Movie> getMoviesApi();
}
