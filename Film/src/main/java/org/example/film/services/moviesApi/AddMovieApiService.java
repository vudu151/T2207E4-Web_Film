package org.example.film.services.moviesApi;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.apis.movieApi.AddMovieApiRequest;
import org.example.film.models.entities.Movies;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AddMovieApiService implements IRequestHandler<AddMovieApiRequest,String> {
    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Override
    public HandleResponse<String> handle(AddMovieApiRequest addMovieApiRequest) throws Exception {
        if(iMoviesRepository.findByName(addMovieApiRequest.getName()).isPresent()){
            return HandleResponse.error("movies already exists");
        } else {
            Movies setMovies = new Movies();
            setMovies.setName(addMovieApiRequest.getName());
            setMovies.setPoster(addMovieApiRequest.getThumb_url());
            iMoviesRepository.save(setMovies);
            return HandleResponse.ok("Movies successfully added : " + setMovies.getName());
        }
    }
}
