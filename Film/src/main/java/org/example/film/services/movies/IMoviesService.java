package org.example.film.services.movies;

import org.example.film.models.apis.movieApiSlug.Movie;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.procedure.moviesp;

import java.util.List;
import java.util.Optional;

public interface IMoviesService {
    List<Movies> getListMovies();
    Optional<Movies> getMovieById(String id);
    List<Movies> getCategoryByMovieid(CategoryMovie id);
    List<Movies> getMoviesByCategoryMovie(Movies id);
 
    List<moviesp> GetMoviePaging(int size, int page, String searchTerm
            ,
                                 String genres
            ,
//                                 int ratingfrom,
//                                 int ratingto,
                                 int yearfrom,
                                 int yearto
    );

 
    List<Movies> getMoviesGenres(List<String> genreList);

    List<Movies> searchMovie(String query);

    List<org.example.film.models.apis.movieApi.Movie> getMoviesApi();

    List<org.example.film.models.apis.movieApi.Movie> getMoviePageApi(int page);
    Movie getMoviePageApiSlug(String slug);
}
