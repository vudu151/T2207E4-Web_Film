package org.example.film.services.episodeApi;

import org.example.film.commons.cqrs.HandleResponse;

public interface IEpisodeApiService {
    HandleResponse<String> addListEpisodeApi(String id);
}
