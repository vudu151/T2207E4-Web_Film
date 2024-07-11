package org.example.film.services.episodes;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Episode;
import org.example.film.models.requests.episodes.EditEpisodeRequest;
import org.example.film.repositories.IEpisodeRepository;
import org.example.film.repositories.IMoviesRepository;
import org.example.film.services.movies.IMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.swing.text.html.Option;
import java.util.Optional;

@Service
@RequiredArgsConstructor

public class EditEpisideService implements IRequestHandler<EditEpisodeRequest,String> {
    @Autowired
    private IEpisodeRepository iEpisodeRepository;

    @Autowired
    private IMoviesRepository iMoviesRepository;
    @Override
    public HandleResponse<String> handle(EditEpisodeRequest editEpisodeRequest) throws Exception {
        Optional<Episode> existingEpisode = iEpisodeRepository.findById(editEpisodeRequest.getId());
        var existingMovie = iMoviesRepository.findById(editEpisodeRequest.getMovieId());
        if (existingEpisode.isEmpty()){
            return HandleResponse.error("news id does not exist.");
        }
        else {
            Episode setEpisode = existingEpisode.get();
            setEpisode.setName(editEpisodeRequest.getName());
            setEpisode.setLink(editEpisodeRequest.getLink());
            setEpisode.setDescription(editEpisodeRequest.getDescription());
            setEpisode.setDuration(editEpisodeRequest.getDuration());
            setEpisode.setFileSize(editEpisodeRequest.getFileSize());
            setEpisode.setLicensePrice(editEpisodeRequest.getLicensePrice());
            setEpisode.setLicenseStart(editEpisodeRequest.getLicenseStart());
            setEpisode.setLicenseEnd(editEpisodeRequest.getLicenseEnd());
            setEpisode.setTax(editEpisodeRequest.getTax());
            setEpisode.setStatus(editEpisodeRequest.getStatus());
            setEpisode.setMovieId(existingMovie.get());
            iEpisodeRepository.save(setEpisode);
            return HandleResponse.ok("Episode successfully added : " + setEpisode.getName());
        }
    }
}
