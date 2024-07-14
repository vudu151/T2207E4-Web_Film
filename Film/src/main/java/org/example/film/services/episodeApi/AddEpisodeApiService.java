package org.example.film.services.episodeApi;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.slugify.Slugify;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.apis.episodeApi.AddEpisodeApiRequest;
import com.google.gson.Gson;
import org.example.film.models.apis.episodeApi.EpisodeDto;
import org.example.film.models.entities.Episode;
import org.example.film.models.entities.Movies;
import org.example.film.repositories.IEpisodeRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class AddEpisodeApiService implements IRequestHandler<AddEpisodeApiRequest, String> {

    private final IMoviesRepository iMoviesRepository;
    private final IEpisodeRepository iEpisodeRepository;
    private final RestTemplate restTemplate;

    @Override
    public HandleResponse<String> handle(AddEpisodeApiRequest addEpisodeApiRequest) throws Exception {
        Movies movie = iMoviesRepository.findById(addEpisodeApiRequest.getId())
                .orElseThrow(() -> new RuntimeException("Movie not found"));

        Slugify slg = new Slugify();
        String slug = slg.slugify(movie.getName());
        String apiUrl = "https://ophim1.com/phim/" + slug;

        // Gửi yêu cầu GET đến API bên thứ ba
        ResponseEntity<String> response = restTemplate.getForEntity(apiUrl, String.class);

        if (response.getStatusCode() == HttpStatus.OK) {
            // Parse phản hồi JSON
            ObjectMapper objectMapper = new ObjectMapper();
            JsonNode rootNode = objectMapper.readTree(response.getBody());
            JsonNode linkEmbedArray = rootNode.get("link_embed");

            if (linkEmbedArray != null && linkEmbedArray.isArray()) {
                for (JsonNode linkEmbedNode : linkEmbedArray) {
                    String linkEmbed = linkEmbedNode.asText();

                    // Tạo mới một Episode và lưu vào database
                    Episode episode = new Episode();
                    episode.setName(1); // Giả sử tên episode là 1 (cần xác định logic tên episode thích hợp)
                    episode.setLink(linkEmbed);
                    episode.setMovieId(movie);

                    iEpisodeRepository.save(episode);
                }
            } else {
                throw new RuntimeException("No link_embed found in API response");
            }
        } else {
            throw new RuntimeException("Failed to fetch data from API: " + apiUrl);
        }

        return HandleResponse.ok("Episode successfully");
    }
}
