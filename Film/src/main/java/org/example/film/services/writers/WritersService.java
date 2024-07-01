package org.example.film.services.writers;

import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Writers;
import org.example.film.repositories.IWriterRepository;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class WritersService implements IWritersService{
    @Autowired
    private IMoviesService iMoviesService;

    @Autowired
    private IWriterRepository iWriterRepository;

    @Override
    public List<Writers> getWritersByMovieId(Movies movies) {
        Optional<Movies> movieId = iMoviesService.getMovieById(movies.getId());
        return iWriterRepository.findWritersByMovies(movieId.get());
    }
}
