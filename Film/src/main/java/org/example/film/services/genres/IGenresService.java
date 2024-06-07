package org.example.film.services.genres;

import org.example.film.models.entities.Genre;

import java.util.List;
import java.util.Optional;

public interface IGenresService {
    List<Genre> getListGenres();
    Optional<Genre> getGenreById(String id);
}
