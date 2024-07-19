package org.example.film.services.movies;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.movies.EditMovieRequest;
import org.example.film.models.requests.movies.UpdateViewsRequest;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UpdateViewsService implements IRequestHandler<UpdateViewsRequest,String> {
    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Override
    public HandleResponse<String> handle(UpdateViewsRequest updateViewsRequest) throws Exception {
        Optional<Movies> moviesIdExist = iMoviesRepository.findById(updateViewsRequest.getId());
        if (moviesIdExist.isEmpty()){
            return HandleResponse.error("Movies does not exist.");
        } else {
            Movies setMovie = moviesIdExist.get();
            setMovie.setTotalView(updateViewsRequest.getTotalView());
            iMoviesRepository.save(setMovie);
            return HandleResponse.ok("View update success : " + setMovie.getTotalView());
        }
    }
}
