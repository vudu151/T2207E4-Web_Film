package org.example.film.services.castings;

import org.example.film.models.entities.Casting;
import org.example.film.models.entities.Movies;
import org.example.film.repositories.ICastingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CastingService implements ICastingService{

    @Autowired
    private ICastingRepository iCastingRepository;

    @Override
    public List<Casting> getCastingByMovie(Movies id) {
        return iCastingRepository.findCastingsByMovies(id);
    }
}
