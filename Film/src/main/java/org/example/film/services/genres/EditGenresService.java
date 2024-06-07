package org.example.film.services.genres;

import com.github.slugify.Slugify;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Genre;
import org.example.film.models.requests.genres.EditGenreRequest;
import org.example.film.repositories.IGenresRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EditGenresService implements IRequestHandler<EditGenreRequest,String> {
    @Autowired
    private IGenresRepository iGenresRepository;
    @Override
    public HandleResponse<String> handle(EditGenreRequest editGenreRequest) throws Exception {
        Optional<Genre> genreIdExist = iGenresRepository.findById(editGenreRequest.getId());
        Optional<Genre> genreNameExist = iGenresRepository.findByName(editGenreRequest.getName());
        Optional<Genre> genreSlugExist = iGenresRepository.findBySlug(editGenreRequest.getSlug());
        if (genreNameExist.isPresent()){
            return HandleResponse.error("genre movie name does exist.");
        } else if (genreIdExist.isEmpty()) {
            return HandleResponse.error("genre movie id does not exist.");
        } else if (genreSlugExist.isPresent()) {
            return HandleResponse.error("genre movie does not id exist.");
        }else {
            Genre genre = genreIdExist.get();
            genre.setName(editGenreRequest.getName());
            Slugify slg = new Slugify();
            genre.setSlug(slg.slugify(editGenreRequest.getSlug()));
            genre.setStatus(editGenreRequest.getStatus());
            iGenresRepository.save(genre);
            return HandleResponse.ok("Genre Movie successfully Update : " + genre.getName());
        }
    }
}
