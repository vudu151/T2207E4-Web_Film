package org.example.film.services.categoriesMovies;

import org.example.film.models.entities.CategoryMovie;
import org.example.film.repositories.ICategoriesMovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CategoriesMoviesService implements ICategoriesMoviesService{

    @Autowired
    private ICategoriesMovieRepository iCategoriesMovieRepository;

    @Override
    public List<CategoryMovie> getListCategoriesMovies() {
        return iCategoriesMovieRepository.findAll();
    }

    @Override
    public Optional<CategoryMovie> getCategoryMovieById(String id) {
        return iCategoriesMovieRepository.findById(id);
    }
}
