package org.example.film.services.directors;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Director;
import org.example.film.models.entities.Movies;
import org.example.film.repositories.IDirectorRepository;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DirectorsService implements IDirectorsService{
    @Autowired
    private IMoviesService iMoviesService;
    @Autowired
    private IDirectorRepository iDirectorRepository;
    @Override
    public List<Director> getDirectorByMovie(Movies movies) {
        Optional<Movies> getMovieId = iMoviesService.getMovieById(movies.getId());
        return iDirectorRepository.findDirectorByMovies(getMovieId.get());
    }

    @Override
    public Director getDirector(String id) {
        return iDirectorRepository.findDirectorById(id);
    }

    @Override
    public List<Director> getDirectorByCelebrity(Celebrity celebrity) {
        return iDirectorRepository.findDirectorByCelebrity(celebrity);
    }


}
