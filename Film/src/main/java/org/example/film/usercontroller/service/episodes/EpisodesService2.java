package org.example.film.usercontroller.service.episodes;

import jakarta.transaction.Transactional;
import org.example.film.models.entities.Episode;
import org.example.film.usercontroller.repositories.IEpisode2Repository;
import org.example.film.usercontroller.repositories.IMovies2Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
//@RequiredArgsConstructor
public class EpisodesService2 implements IEpisodesService2 {

    @Autowired
    private IEpisode2Repository iEpisode2Repository;

    @Autowired
    private IMovies2Repository iMovies2Repository;

    public EpisodesService2(IEpisode2Repository iEpisode2Repository, IMovies2Repository iMovies2Repository) {
        this.iEpisode2Repository = iEpisode2Repository;
        this.iMovies2Repository = iMovies2Repository;
    }

    @Override
    public List<Episode> getListEpisode() {

            return iEpisode2Repository.findAll();

    }
    @Override
    public List<Episode> getEpisodesBymovie_id(String movie_id) {
        return iEpisode2Repository.getEpisodesByMovieId(movie_id);
    }

//    public List<Episode> getRelatedEpisodes(String episodeId) {
//        Optional<Episode> currentEpisodeOptional = iEpisode2Repository.findById(episodeId);
//        if (currentEpisodeOptional.isPresent()) {
//            Episode currentEpisode = currentEpisodeOptional.get();
//            Movies movie = currentEpisode.getMovie_id();
//            List<Episode> relatedEpisodes = new ArrayList<>();
//
//            boolean foundCurrentEpisode = false;
//            for (Episode episode : movie.getEpisodes()) {
//                if (foundCurrentEpisode) {
//                    relatedEpisodes.add(episode);
//                }
//                if (episode.getId().equals(currentEpisode.getId())) {
//                    foundCurrentEpisode = true;
//                }
//            }
//
//            return relatedEpisodes;
//        } else {
//            return new ArrayList<>();
//        }
//    }

    @Override
    public Optional<Episode> getEpisodeById(String id) {
        return iEpisode2Repository.findById(id);
    }

    public Episode getEpisodeById2(String id) {
        return iEpisode2Repository.findById(id).orElseThrow(() -> new RuntimeException("Episode not found"));
    }
    public List<Episode> getEpisodesByMovieId(String movieId) {
        return iEpisode2Repository.timdanhsachtaptheotaps(movieId);
    }
//    public List<Episode> getRelatedEpisodes(String episodeId) {
//        return iEpisode2Repository.getRelatedEpisodes(episodeId);
//    }
}
