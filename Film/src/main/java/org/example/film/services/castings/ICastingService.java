package org.example.film.services.castings;

import org.example.film.models.entities.Casting;
import org.example.film.models.entities.Movies;

import java.util.List;

public interface ICastingService {

    List<Casting> getCastingByMovie(Movies id);
}
