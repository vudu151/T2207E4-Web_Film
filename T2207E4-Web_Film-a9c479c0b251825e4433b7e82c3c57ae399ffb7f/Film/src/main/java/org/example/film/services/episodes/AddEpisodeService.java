package org.example.film.services.episodes;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Episode;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.episodes.AddEpisodeRequest;
import org.example.film.repositories.IEpisodeRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor 
public class AddEpisodeService implements IRequestHandler<AddEpisodeRequest,String> {
    @Autowired
    private IEpisodeRepository iEpisodeRepository;
    
    @Autowired
    private IMoviesRepository iMoviesRepository;
    @Override
    public HandleResponse<String> handle(AddEpisodeRequest addEpisodeRequest) throws Exception {
        var existingMovieId = iMoviesRepository.findById(addEpisodeRequest.getMovie_id());

        if (existingMovieId.isEmpty()){
            return HandleResponse.error("movie does not exist.");
        }else {
                Episode setEpisode = new Episode();
                setEpisode.setName(addEpisodeRequest.getName());
                setEpisode.setLink(addEpisodeRequest.getLink());
                setEpisode.setDescription(addEpisodeRequest.getDescription());
                setEpisode.setDuration(addEpisodeRequest.getDuration());
                setEpisode.setFileSize(addEpisodeRequest.getFileSize());
                setEpisode.setLicensePrice(addEpisodeRequest.getLicensePrice());
                setEpisode.setLicenseStart(addEpisodeRequest.getLicenseStart());
                setEpisode.setLicenseEnd(addEpisodeRequest.getLicenseEnd());
                setEpisode.setTax(addEpisodeRequest.getTax());
                setEpisode.setStatus(addEpisodeRequest.getStatus());
                setEpisode.setMovie_id(existingMovieId.get());
                iEpisodeRepository.save(setEpisode);
                return HandleResponse.ok("Episode successfully added : " + setEpisode.getName());
        }
    }
}
