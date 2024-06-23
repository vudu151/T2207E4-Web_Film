package org.example.film.services.episodes;

import org.example.film.models.entities.Episode;
import org.example.film.models.entities.Movies;
import org.example.film.repositories.IEpisodeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EpisodesService implements IEpisodesService{

    @Autowired
    private IEpisodeRepository iEpisodeRepository;

    @Override
    public List<Episode> getEpisodeByMovieId(Movies id) {
        return iEpisodeRepository.findAllByMovieId(id);
    }

    @Override
    public Optional<Episode> getEpisodeById(String id) {
        return iEpisodeRepository.findById(id);
    }


}
