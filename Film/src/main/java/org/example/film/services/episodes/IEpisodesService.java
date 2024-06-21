package org.example.film.services.episodes;

import org.example.film.models.entities.Episode;
import org.example.film.models.entities.Movies;

import java.util.List;

public interface IEpisodesService {
    List<Episode> getEpisodeByMovieId(Movies id);
}
