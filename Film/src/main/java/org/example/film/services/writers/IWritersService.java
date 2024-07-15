package org.example.film.services.writers;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Writers;

import java.util.List;

public interface IWritersService {
    List<Writers> getWritersByMovieId(Movies movies);
    List<Writers> getWriterByCelebrity(Celebrity celebrity);
    Writers getWriter(String id);

    List<Writers> getAllWriters();
}
