package org.example.film.services.movies;

 
import jakarta.transaction.Transactional;
import lombok.AllArgsConstructor;
import org.example.film.models.entities.Casting;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.procedure.moviesp;
import org.example.film.models.entities.procedure.moviesp2;
import org.example.film.repositories.IMoviesRepository;
import org.example.film.repositories.procedure.IMovieSPRepository;
import org.example.film.repositories.procedure.ITestProcedure;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
//@AllArgsConstructor
public class MoviesService implements IMoviesService{

    @Autowired
    private IMoviesRepository iMoviesRepository;
    @Autowired
    private   IMovieSPRepository iMovieSPRepository;

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
    public List<moviesp> GetMoviePaging(int page,  int size, String searchTerm
            ,
                                        String genres
                                        ,
//                                        int ratingfrom,int ratingto,
                                        int yearfrom,int yearto
    ){
       return iMovieSPRepository.GetMoviePage(page, size,  searchTerm
               ,
               genres
               ,
//               ratingfrom, ratingto,
               yearfrom,yearto
       );

    }
   @Autowired
    private ITestProcedure iTestProcedure;

    @Transactional
    public List<moviesp2> TestGetMoviePage(int a){
        return iTestProcedure.TestGetMoviePage(a);
    }

 
}
