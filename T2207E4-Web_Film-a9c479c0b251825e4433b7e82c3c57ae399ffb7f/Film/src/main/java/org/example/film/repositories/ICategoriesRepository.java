package org.example.film.repositories;

import org.example.film.models.entities.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ICategoriesRepository extends JpaRepository<Category,String> {
    Optional<Category> findById(String id);
    Optional<Category> findByName(String name);
    Optional<Category> findBySlug(String slug);

}
