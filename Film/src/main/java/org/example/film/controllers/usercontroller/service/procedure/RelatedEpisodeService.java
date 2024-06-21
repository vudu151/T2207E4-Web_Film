package org.example.film.usercontroller.service.procedure;

import jakarta.transaction.Transactional;
import org.example.film.usercontroller.models.procedure.RelatedEpisodeDTO;
import org.example.film.usercontroller.repositories.RelatedEpisodeRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class RelatedEpisodeService {
    private final RelatedEpisodeRepository relatedEpisodeRepository;

    public RelatedEpisodeService(RelatedEpisodeRepository relatedEpisodeRepository) {
        this.relatedEpisodeRepository = relatedEpisodeRepository;
    }

    public List<RelatedEpisodeDTO> getRelatedEpisodes(String episodeId) {
        return relatedEpisodeRepository.getRelatedEpisodes(episodeId);
    }
}