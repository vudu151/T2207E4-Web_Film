package org.example.film.services.writers;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Writers;
import org.example.film.repositories.IWriterRepository;
import org.example.film.services.celebrities.ICelebritiesService;
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

    @Autowired
    private ICelebritiesService iCelebritiesService;

    @Override
    public List<Writers> getWritersByMovieId(Movies movies) {
        Optional<Movies> movieId = iMoviesService.getMovieById(movies.getId());
        return iWriterRepository.findWritersByMovies(movieId.get());
    }

    @Override
    public List<Writers> getWriterByCelebrity(Celebrity celebrity) {
        return iWriterRepository.findWritersByCelebrity(celebrity);
    }

    @Override
    public Writers getWriter(String id) {
        return iWriterRepository.findWritersById(id);
    }

    @Override
    public List<Writers> getAllWriters() {
        return iWriterRepository.findAll();
    }

}
