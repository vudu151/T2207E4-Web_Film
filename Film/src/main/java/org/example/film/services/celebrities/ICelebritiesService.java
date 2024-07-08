package org.example.film.services.celebrities;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;

import java.util.List;
import java.util.Optional;

public interface ICelebritiesService {
    List<Celebrity> getListCelebrities();
    Optional<Celebrity> getCelebrityById(String id);
    List<Celebrity> searchByNameAndJob(String name, String job);
}
