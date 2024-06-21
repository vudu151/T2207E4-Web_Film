package org.example.film.usercontroller.service.episodes;

import org.example.film.models.entities.Episode;
import org.example.film.models.entities.Movies;

import java.util.List;
import java.util.Optional;

public interface IEpisodesService {
    List<Episode> getListEpisode();
    Optional<Episode> getEpisodeById(String id);
    List<Episode> getEpisodesBymovie_id(String movie_id);
}
