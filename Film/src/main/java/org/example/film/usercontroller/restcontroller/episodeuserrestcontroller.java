package org.example.film.usercontroller.restcontroller;

import org.example.film.models.entities.Episode;
import org.example.film.usercontroller.models.procedure.RelatedEpisodeDTO;
import org.example.film.usercontroller.service.episodes.EpisodesService2;
import org.example.film.usercontroller.service.procedure.RelatedEpisodeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/public/episode")
public class episodeuserrestcontroller {
    private final EpisodesService2 episodeService;



    private final RelatedEpisodeService relatedEpisodeService;

    public episodeuserrestcontroller(EpisodesService2 episodeService, RelatedEpisodeService relatedEpisodeService) {
        this.episodeService = episodeService;
        this.relatedEpisodeService = relatedEpisodeService;
    }

    @GetMapping("/{episodeId}/related")
    public List<RelatedEpisodeDTO> getRelatedEpisodes(@PathVariable String episodeId) {
        return relatedEpisodeService.getRelatedEpisodes(episodeId);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Episode> getEpisodeDetails(@PathVariable String id) {
        Optional<Episode> episodeOptional = episodeService.getEpisodeById(id);
        return episodeOptional.map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/related/{episodeId}")
    public List<Episode> getEpisodesRelated(@PathVariable String episodeId) {
//        Episode episode = episodeService.getEpisodeById2(episodeId);
        return episodeService.getEpisodesByMovieId(episodeId);
    }
//    @GetMapping("/{id}/related")
//    public List<Episode> getRelatedEpisodes(@PathVariable("id") String  id) {
//        return episodeService.getRelatedEpisodes(id);
//    }
//    @GetMapping("/{id}/related")
//    public List<Episode> getRelatedEpisodes(@PathVariable("id") String episodeId) {
//        return episodeService.getRelatedEpisodes(episodeId);
//    }
}
