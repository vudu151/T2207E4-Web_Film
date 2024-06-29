package org.example.film.usercontroller.controllers.episode;

import org.example.film.models.entities.Episode;
import org.example.film.usercontroller.service.episodes.EpisodesService2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
@RequestMapping("/episodes")
public class EpisodeController2 {
    private final EpisodesService2 episodeService;
    public EpisodeController2(EpisodesService2 episodeService) {
        this.episodeService = episodeService;
    }

    @GetMapping("/{id}")
    public String getEpisodeDetails(@PathVariable String id, Model model) {
        Optional<Episode> episodeOptional = episodeService.getEpisodeById(id);
        if (episodeOptional.isPresent()) {
            Episode episode = episodeOptional.get();
        model.addAttribute("episode", episode);}
        return "public/episodes/detail";
    }
}
