package org.example.film.services.celebrities;

import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.example.film.models.entities.procedure.cebritiesp;

import java.util.List;
import java.util.Optional;

public interface ICelebritiesService {
    List<Celebrity> getListCelebrities();

    Optional<Celebrity> getCelebrityById(String id);

    List<cebritiesp> GetCebrityPage(
            int page,
            int size ,
            String searchTerm,
            String letter,
            String p_job,
            int p_yearfrom,
            int p_yearto
    );
}
