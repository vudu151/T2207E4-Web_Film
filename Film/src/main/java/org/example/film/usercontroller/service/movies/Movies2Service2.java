package org.example.film.usercontroller.service.movies;

import org.example.film.models.entities.Movies;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class Movies2Service2 implements IMovies2Service {

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
}
