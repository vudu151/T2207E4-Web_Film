package org.example.film.services.reviews;

import org.example.film.models.entities.Account;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Reviews;

import java.util.List;

public interface IReviewsService {
    List<Reviews> getAllReviewByMovie(Movies movies);
    int getAverageStarByMovieId(String movieId);
}
