package org.example.film.services.categories;

import org.example.film.models.entities.Category;

import java.util.List;
import java.util.Optional;

public interface ICategoriesService {
    List<Category> getListCategory();
    Optional<Category> getCategoryById(String id);
}
