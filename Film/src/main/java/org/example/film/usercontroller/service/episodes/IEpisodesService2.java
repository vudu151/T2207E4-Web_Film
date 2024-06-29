package org.example.film.usercontroller.service.episodes;

import org.example.film.models.entities.Episode;

import java.util.List;
import java.util.Optional;

public interface IEpisodesService2 {
    List<Episode> getListEpisode();
    Optional<Episode> getEpisodeById(String id);
    List<Episode> getEpisodesBymovie_id(String movie_id);
}
