package org.example.film.services.movies;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.movies.DeleteMovieRequest;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DeleteMoviesService implements IRequestHandler<DeleteMovieRequest,String> {
    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Override
    public HandleResponse<String> handle(DeleteMovieRequest deleteMovieRequest) throws Exception {
        Optional<Movies> movieIdExist = iMoviesRepository.findById(deleteMovieRequest.getId());
        if (movieIdExist.isEmpty()){
            return HandleResponse.error("Movie does not exist.");
        }else {
            iMoviesRepository.delete(movieIdExist.get());
            return HandleResponse.ok("Delete movie successfully.");
        }
    }
}
