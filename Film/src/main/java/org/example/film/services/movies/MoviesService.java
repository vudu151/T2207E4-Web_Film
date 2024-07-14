package org.example.film.services.movies;

import lombok.RequiredArgsConstructor;
import org.example.film.models.apis.movieApi.Movie;
import org.example.film.models.apis.movieApi.MovieResponse;
import org.example.film.models.entities.*;
import org.example.film.repositories.IGenresRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.*;

@Service
@RequiredArgsConstructor
public class MoviesService implements IMoviesService{

    private final RestTemplate restTemplate = new RestTemplate();
    private static final String API_URL = "https://ophim1.com/danh-sach/phim-moi-cap-nhat?page=1";
    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private IGenresRepository iGenresRepository;

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

    @Override
    public List<Movies> getMoviesGenres(List<String> genreList) {
        return iMoviesRepository.findAllByGenreList(genreList);
    }

    @Override
    public List<Movies> searchMovie(String query) {
        return iMoviesRepository.findByNameContainingIgnoreCase(query);
    }

    @Override
    public List<Movie> getMoviesApi() {
        ResponseEntity<MovieResponse> response = restTemplate.getForEntity(API_URL, MovieResponse.class);
        return response.getBody().getItems();
    }


}
