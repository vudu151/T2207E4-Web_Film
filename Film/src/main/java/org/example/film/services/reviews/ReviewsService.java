package org.example.film.services.reviews;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Account;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Reviews;
import org.example.film.repositories.IAccountRepository;
import org.example.film.repositories.IMoviesRepository;
import org.example.film.repositories.IReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Service;

import java.sql.CallableStatement;
import java.sql.Types;
import java.util.*;

@Service
@RequiredArgsConstructor
public class ReviewsService implements IReviewsService{
    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private IReviewRepository iReviewRepository;


    private final JdbcTemplate jdbcTemplate;

    @Override
    public List<Reviews> getAllReviewByMovie(Movies movies) {
        Optional<Movies> getMovie = iMoviesRepository.findById(movies.getId());
        return iReviewRepository.findAllByMovies(getMovie.get());
    }

    @Override
    public int getAverageStarByMovieId(String movieId) {
        return iReviewRepository.getAverageStarByMovieId(movieId).orElse(0);
    }

    @Override
    public List<Movies> getAllReviewedMovies() {
        return iReviewRepository.findAllReviewMovies();
    }


}
