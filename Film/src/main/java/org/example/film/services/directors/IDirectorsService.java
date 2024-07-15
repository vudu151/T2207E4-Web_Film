package org.example.film.services.directors;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Director;
import org.example.film.models.entities.Movies;

import java.util.List;

public interface IDirectorsService {
    List<Director> getDirectorByMovie(Movies movies);
    Director getDirector (String id);

    List<Director> getDirectorByCelebrity(Celebrity celebrity);
    List<Director> getAllDirector();
}
