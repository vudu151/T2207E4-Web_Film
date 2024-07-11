package org.example.film.services.actors;

import org.example.film.models.entities.Actors;
import org.example.film.models.entities.Movies;
import org.example.film.repositories.IActorRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ActorService implements IActorService{

    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private IActorRepository iActorRepository;
    @Override
    public List<Actors> getActorByMovieId(Movies movies) {
        Optional<Movies> getMovies = iMoviesRepository.findById(movies.getId());
        return iActorRepository.findActorsByMovies(getMovies.get());
    }
}
