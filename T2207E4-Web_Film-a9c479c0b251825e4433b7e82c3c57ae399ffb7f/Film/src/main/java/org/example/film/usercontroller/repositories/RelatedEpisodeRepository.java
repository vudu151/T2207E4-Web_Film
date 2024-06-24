package org.example.film.usercontroller.repositories;

import org.example.film.usercontroller.models.procedure.RelatedEpisodeDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface RelatedEpisodeRepository extends JpaRepository<RelatedEpisodeDTO,String> {
    @Procedure("get_related_episodes")
    List<RelatedEpisodeDTO> getRelatedEpisodes(@Param("p_episode_id") String episodeId);
}
