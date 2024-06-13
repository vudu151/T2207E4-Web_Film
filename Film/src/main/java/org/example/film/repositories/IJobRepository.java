package org.example.film.repositories;

import org.example.film.models.entities.Job;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface IJobRepository extends JpaRepository<Job, String> {
    Optional<Job> findByName(String name);
    Optional<Job> findBySlug(String slug);
}
