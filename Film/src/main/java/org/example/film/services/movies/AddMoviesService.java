package org.example.film.services.movies;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.movies.AddMovieRequest;
import org.example.film.repositories.ICategoriesMovieRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
@RequiredArgsConstructor
public class AddMoviesService implements IRequestHandler<AddMovieRequest,String> {
    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private ICategoriesMovieRepository iCategoriesMovieRepository;
    @Override
    public HandleResponse<String> handle(AddMovieRequest addMovieRequest) throws Exception {
        var existingCategoriesMovies = iCategoriesMovieRepository.findById(addMovieRequest.getCategoriesMoviesId().getId());
        if(iMoviesRepository.findByName(addMovieRequest.getName()).isPresent()){
            return HandleResponse.error("movies already exists");
        } else if (existingCategoriesMovies.isEmpty()) {
            return HandleResponse.error("category movie does not exist.");
        } else {
            Movies setMovies = new Movies();
            setMovies.setName(addMovieRequest.getName());
            setMovies.setTotalEpisode(addMovieRequest.getTotalEpisode());
            setMovies.setPoster(addMovieRequest.getPoster());
            setMovies.setRelease(addMovieRequest.getRelease());
            setMovies.setTotalDuration(addMovieRequest.getTotalDuration());
            setMovies.setMmpaRating(addMovieRequest.getMmpaRating());
            setMovies.setKeyWords(addMovieRequest.getKeyWords());
            setMovies.setDescription(addMovieRequest.getDescription());
            setMovies.setTotalView(addMovieRequest.getTotalView());
            setMovies.setLevel(addMovieRequest.getLevel());
            setMovies.setCreateAt(new Date());
            setMovies.setStatus(addMovieRequest.getStatus());
            setMovies.setCategoryMovieId(existingCategoriesMovies.get());
            iMoviesRepository.save(setMovies);
            return HandleResponse.ok("Movies successfully added : " + setMovies.getName());
        }
    }
}
