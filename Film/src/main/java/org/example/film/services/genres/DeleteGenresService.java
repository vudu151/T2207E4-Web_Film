package org.example.film.services.genres;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Genre;
import org.example.film.models.requests.genres.DeleteGenreRequest;
import org.example.film.repositories.IGenresRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DeleteGenresService implements IRequestHandler<DeleteGenreRequest, String> {

    @Autowired
    private IGenresRepository iGenresRepository;
    @Override
    public HandleResponse<String> handle(DeleteGenreRequest deleteGenreRequest) throws Exception {
        Optional<Genre> genreExist = iGenresRepository.findById(deleteGenreRequest.getId());
        if(genreExist.isEmpty()){
            return HandleResponse.error("Genre movie does not exist.");
        }else {
            iGenresRepository.delete(genreExist.get());
            return HandleResponse.ok("Genre movie successfully.");
        }
    }
}
