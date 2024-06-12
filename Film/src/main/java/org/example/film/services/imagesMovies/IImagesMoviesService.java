package org.example.film.services.imagesMovies;

import org.example.film.models.entities.ImagesMovies;
import org.example.film.models.entities.Movies;

import java.util.List;

public interface IImagesMoviesService {
    List<ImagesMovies> getListImageMovieByMovieId(Movies movieId);
}
