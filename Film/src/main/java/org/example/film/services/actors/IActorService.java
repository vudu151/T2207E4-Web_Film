package org.example.film.services.actors;

import org.example.film.models.entities.Actors;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Movies;

import java.util.List;

public interface IActorService {
    List<Actors> getActorByMovieId(Movies movies);
    Actors getActorById(String id);
    List<Actors> getActorByCelebrity(Celebrity celebrity);
    List<Actors> findAllActors();

}
