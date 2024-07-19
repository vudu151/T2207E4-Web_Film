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
            JsonNode episodesArray = rootNode.get("episodes");

            if (episodesArray != null && episodesArray.isArray()) {
                for (JsonNode episodeNode : episodesArray) {
                    JsonNode serverDataArray = episodeNode.get("server_data");
                    if (serverDataArray != null && serverDataArray.isArray()) {
                        for (JsonNode serverDataNode : serverDataArray) {
                            String linkEmbed = serverDataNode.get("link_embed").asText();
                            int episodeName;
                            String episode = serverDataNode.get("name").asText();
                            if (episode.contains("Full")){
                                episodeName = 1;
                            } else {
                                episodeName = Integer.parseInt(serverDataNode.get("name").asText());
                            }
                            // Kiểm tra xem tập phim đã tồn tại trong cơ sở dữ liệu chưa
                            Episode existingEpisode = iEpisodeRepository.findByMovieIdAndName(movie, episodeName);
                            if (existingEpisode != null) {
                                // Nếu đã tồn tại, cập nhật thông tin của nó
                                existingEpisode.setLink(linkEmbed);
                                // Cập nhật các thông tin khác nếu cần thiết
                                iEpisodeRepository.save(existingEpisode);
                            } else {
                                // Nếu chưa tồn tại, thêm mới vào cơ sở dữ liệu
                                Episode newEpisode = new Episode();
                                newEpisode.setName(episodeName);
                                newEpisode.setLink(linkEmbed);
                                newEpisode.setMovieId(movie);

                                iEpisodeRepository.save(newEpisode);
                            }
                        }
                    } else {
                        throw new RuntimeException("No server_data found in episode node");
                    }
                }
            } else {
                throw new RuntimeException("No episodes found in API response");
            }
        } else {
            throw new RuntimeException("Failed to fetch data from API: " + apiUrl);
        }

        return HandleResponse.ok("Episodes successfully added or updated");
    }

}

