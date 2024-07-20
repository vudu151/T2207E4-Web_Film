package org.example.film.services.movies;

 
 
import jakarta.transaction.Transactional;
import org.example.film.models.apis.movieApiSlug.Movie;
import org.example.film.models.apis.movieApiSlug.MovieSlugRespone;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.procedure.moviesp;
 
import lombok.RequiredArgsConstructor;
import org.example.film.models.apis.movieApi.MovieResponse;
import org.example.film.repositories.IGenresRepository;
 
import org.example.film.repositories.IMoviesRepository;
import org.example.film.repositories.procedure.IMovieSPRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.*;

@Service
@RequiredArgsConstructor
public class MoviesService implements IMoviesService{

    private final RestTemplate restTemplate = new RestTemplate();
    private static final String API_URL = "https://ophim1.com/danh-sach/phim-moi-cap-nhat?page=1";
    @Autowired
    private IMoviesRepository iMoviesRepository;
 
    @Autowired
    private IMovieSPRepository iMovieSPRepository;
 

    @Autowired
    private IGenresRepository iGenresRepository;
 
    @Override
    public List<Movies> getListMovies() {
        return iMoviesRepository.findAll();
    }

    @Override
    public Optional<Movies> getMovieById(String id) {
        return iMoviesRepository.findById(id);
    }

    @Override
    public List<Movies> getCategoryByMovieid(CategoryMovie id) {
        return iMoviesRepository.findByCategoryMovieId(id);
    }

    @Override
    public List<Movies> getMoviesByCategoryMovie(Movies id) {
        return iMoviesRepository.findMoviesByCategoryMovieId(id);
    }
    @Override
    @Transactional
    public List<moviesp> GetMoviePaging(int page, int size, String searchTerm
            ,
                                        String genres
            ,
//                                        int ratingfrom,int ratingto,
                                        int yearfrom, int yearto
    ){
        return iMovieSPRepository.GetMoviePage(page, size,  searchTerm
                ,
                genres
                ,
//               ratingfrom, ratingto,
                yearfrom,yearto
        );

    }

     @Override
    public List<Movies> getMoviesGenres(List<String> genreList) {
        return iMoviesRepository.findAllByGenreList(genreList);
    }

    @Override
    public List<Movies> searchMovie(String query) {
        return iMoviesRepository.findByNameContainingIgnoreCase(query);
    }

    @Override
    public List<org.example.film.models.apis.movieApi.Movie> getMoviesApi() {
        ResponseEntity<MovieResponse> response = restTemplate.getForEntity(API_URL, MovieResponse.class);
        return response.getBody().getItems();
    }


    @Override
    public List<org.example.film.models.apis.movieApi.Movie> getMoviePageApi(int page) {
        String apiMovie = "https://ophim1.com/danh-sach/phim-moi-cap-nhat?page="+page;
        ResponseEntity<MovieResponse> response = restTemplate.getForEntity(apiMovie,MovieResponse.class);
        return response.getBody().getItems();
    }

    @Override
    public Movie getMoviePageApiSlug(String slug) {

        String apiMovie = "https://ophim1.com/phim/" + slug;
        ResponseEntity<MovieSlugRespone> response = restTemplate.getForEntity(apiMovie, MovieSlugRespone.class);
        MovieSlugRespone responseBody = response.getBody();

        if (responseBody != null && responseBody.isStatus()) {
            Movie movie = responseBody.getMovie();
            if (movie != null) {
                System.out.println("Movie Name: " + movie.getName());
                return movie;
            } else {
                System.out.println("MovieSlug is null");
                return null;
            }
        } else {
            System.out.println("Response body is null or status is false");
            return null;
        }
    }
}
