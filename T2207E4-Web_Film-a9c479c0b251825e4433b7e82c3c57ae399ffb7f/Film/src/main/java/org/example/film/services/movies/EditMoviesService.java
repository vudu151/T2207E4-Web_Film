package org.example.film.services.movies;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.movies.EditMovieRequest;
import org.example.film.repositories.ICategoriesMovieRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class EditMoviesService implements IRequestHandler<EditMovieRequest,String> {
    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private ICategoriesMovieRepository iCategoriesMovieRepository;


    @Override
    public HandleResponse<String> handle(EditMovieRequest editMovieRequest) throws Exception {
        Optional<Movies> moviesIdExist = iMoviesRepository.findById(editMovieRequest.getId());
        var existCategoryMovie = iCategoriesMovieRepository.findById(editMovieRequest.getCategoriesMoviesId().getId());
        if (moviesIdExist.isEmpty()){
            return HandleResponse.error("news id does not exist.");
        }
        else {
            Movies setMovies = moviesIdExist.get();
            setMovies.setName(editMovieRequest.getName());
            setMovies.setTotalEpisode(editMovieRequest.getTotalEpisode());
            setMovies.setPoster(editMovieRequest.getPoster());
            setMovies.setRelease(editMovieRequest.getRelease());
            setMovies.setTotalDuration(editMovieRequest.getTotalDuration());
            setMovies.setMmpaRating(editMovieRequest.getMmpaRating());
            setMovies.setKeyWords(editMovieRequest.getKeyWords());
            setMovies.setDescription(editMovieRequest.getDescription());
            setMovies.setTotalView(editMovieRequest.getTotalView());
            setMovies.setLevel(editMovieRequest.getLevel());
            setMovies.setCreateAt(new Date());
            setMovies.setStatus(editMovieRequest.getStatus());
            setMovies.setCategoryMovieId(existCategoryMovie.get());
            iMoviesRepository.save(setMovies);
            return HandleResponse.ok("Movies successfully added : " + setMovies.getName());
        }
    }
}
