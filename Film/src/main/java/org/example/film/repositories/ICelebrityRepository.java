package org.example.film.repositories;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ICelebrityRepository extends JpaRepository<Celebrity, String> {
    Optional<Celebrity> findBySlug(String slug);
    List<Celebrity> findByJobs_Slug(String slug);
    List<Celebrity> findByNameContainingAndJobs_NameContaining(String name, String job);
}
