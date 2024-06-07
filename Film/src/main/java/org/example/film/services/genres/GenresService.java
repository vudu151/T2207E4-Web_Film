package org.example.film.services.genres;

import org.example.film.models.entities.Genre;
import org.example.film.repositories.IGenresRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class GenresService implements IGenresService{

    @Autowired
    private IGenresRepository iGenresRepository;
    @Override
    public List<Genre> getListGenres() {
        return iGenresRepository.findAll();
    }

    @Override
    public Optional<Genre> getGenreById(String id) {
        return iGenresRepository.findById(id);
    }
}
