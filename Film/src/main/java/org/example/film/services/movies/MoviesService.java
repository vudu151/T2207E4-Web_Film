package org.example.film.services.movies;

import org.example.film.models.entities.Casting;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Movies;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class MoviesService implements IMoviesService{

    @Autowired
    private IMoviesRepository iMoviesRepository;
    @Override
    public List<Movies> getListMovies() {
        return iMoviesRepository.findAll();
    }

    @Override
    public Optional<Movies> getMovieById(String id) {
        return iMoviesRepository.findById(id);
    }

    @Override
    public List<Movies> getCategoryByMovieid(CategoryMovie id) {
        return iMoviesRepository.findByCategoryMovieId(id);
    }

    @Override
    public List<Movies> getMoviesByCategoryMovie(Movies id) {
        return iMoviesRepository.findMoviesByCategoryMovieId(id);
    }

}
