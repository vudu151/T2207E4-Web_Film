package org.example.film.services.genres;

import com.github.slugify.Slugify;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Genre;
import org.example.film.models.requests.genres.AddGenreRequest;
import org.example.film.repositories.IGenresRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AddGenresService implements IRequestHandler<AddGenreRequest,String> {
    @Autowired
    private IGenresRepository iGenresRepository;
    @Override
    public HandleResponse<String> handle(AddGenreRequest addGenreMovieRequest) throws Exception {
        if (iGenresRepository.findByName(addGenreMovieRequest.getName()).isPresent()){
            return HandleResponse.error("genre already exists");
        }else if (iGenresRepository.findBySlug(addGenreMovieRequest.getSlug()).isPresent()){
            return HandleResponse.error("slug genre already exists");
        }else {
            Genre genre = new Genre();
            genre.setName(addGenreMovieRequest.getName());
            Slugify slg = new Slugify();
            genre.setSlug(slg.slugify(addGenreMovieRequest.getName()));
            genre.setStatus(addGenreMovieRequest.getStatus());
            iGenresRepository.save(genre);
            return HandleResponse.ok("Genre successfully added : " + genre.getName());
        }
    }
}
