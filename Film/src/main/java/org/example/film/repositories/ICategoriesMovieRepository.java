package org.example.film.repositories;

import org.example.film.models.entities.CategoryMovie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ICategoriesMovieRepository extends JpaRepository<CategoryMovie,String> {
    Optional<CategoryMovie> findById(String id);
    Optional<CategoryMovie> findByName(String name);
    Optional<CategoryMovie> findBySlug(String slug);


}
