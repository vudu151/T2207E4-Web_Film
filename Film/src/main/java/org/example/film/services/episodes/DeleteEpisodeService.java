package org.example.film.services.episodes;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Episode;
import org.example.film.models.requests.episodes.DeleteEpisodeRequest;
import org.example.film.repositories.IEpisodeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DeleteEpisodeService implements IRequestHandler<DeleteEpisodeRequest,String> {
    @Autowired
    private IEpisodeRepository iEpisodeRepository;
    @Override
    public HandleResponse<String> handle(DeleteEpisodeRequest deleteEpisodeRequest) throws Exception {
        Optional<Episode> episodeIdExisting = iEpisodeRepository.findById(deleteEpisodeRequest.getId());
        if(episodeIdExisting.isEmpty()){
            return HandleResponse.error("Movie does not exist.");
        }else {
            iEpisodeRepository.delete(episodeIdExisting.get());
            return HandleResponse.ok("Delete Episode successfully.");
        }
    }
}
