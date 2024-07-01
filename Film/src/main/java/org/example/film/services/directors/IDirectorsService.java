package org.example.film.services.directors;

import org.example.film.models.entities.Director;
import org.example.film.models.entities.Movies;

import java.util.List;

public interface IDirectorsService {
    List<Director> getDirectorByMovie(Movies movies);
}
