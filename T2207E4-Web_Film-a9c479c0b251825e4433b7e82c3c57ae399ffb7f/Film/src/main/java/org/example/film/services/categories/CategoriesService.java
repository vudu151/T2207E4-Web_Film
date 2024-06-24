package org.example.film.services.categories;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Category;
import org.example.film.repositories.ICategoriesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CategoriesService implements ICategoriesService{
    @Autowired
    private ICategoriesRepository iCategoriesRepository;
    @Override
    public List<Category> getListCategory() {
        return iCategoriesRepository.findAll();
    }

    @Override
    public Optional<Category> getCategoryById(String id) {
        return iCategoriesRepository.findById(id);
    }
}
