package org.example.film.services.movies;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.movies.EditMovieRequest;
import org.example.film.repositories.ICategoriesMovieRepository;
import org.example.film.repositories.IGenresRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class EditMoviesService implements IRequestHandler<EditMovieRequest,String> {
    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private ICategoriesMovieRepository iCategoriesMovieRepository;

    @Autowired
    private IGenresRepository iGenresRepository;

    @Override
    public HandleResponse<String> handle(EditMovieRequest editMovieRequest) throws Exception {
        Optional<Movies> moviesIdExist = iMoviesRepository.findById(editMovieRequest.getId());
        var existCategoryMovie = iCategoriesMovieRepository.findById(editMovieRequest.getCategoriesMoviesId());
        var existingGenre = iGenresRepository.findById(editMovieRequest.getGenreId());
        var existingGenreList = iGenresRepository.findAllById(editMovieRequest.getGenreListId());
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
            setMovies.setIsSeries(editMovieRequest.getIsSeries());
            setMovies.setIsPopular(editMovieRequest.getIsPopular());
            setMovies.setScreeningStatus(editMovieRequest.getScreeningStatus());
            setMovies.setTrailer(editMovieRequest.getTrailer());
            setMovies.setDescription(editMovieRequest.getDescription());
            setMovies.setLevel(editMovieRequest.getLevel());
            setMovies.setCreateAt(new Date());
            setMovies.setStatus(editMovieRequest.getStatus());
            setMovies.setCategoryMovieId(existCategoryMovie.get());
            setMovies.setGenre(existingGenre.get());
            setMovies.setGenreList(existingGenreList);
            // Update the image list
            if (editMovieRequest.getImagesId() != null && !editMovieRequest.getImagesId().isEmpty()) {
                setMovies.setImages(editMovieRequest.getImagesId());
            }
            iMoviesRepository.save(setMovies);
            return HandleResponse.ok("Movies successfully added : " + setMovies.getName());
        }
    }
}
