package org.example.film.commons.globalmodelinterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.film.models.entities.*;
import org.example.film.services.categoriesMovies.CategoriesMoviesService;
import org.example.film.services.categoriesMovies.ICategoriesMoviesService;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.genres.GenresService;
import org.example.film.services.jobs.IJobsService;
import org.example.film.services.movies.IMoviesService;
import org.example.film.services.movies.MoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class GlobalModelInterceptor implements HandlerInterceptor {

    @Autowired
    private ICategoriesMoviesService iCategoriesMoviesService;

    @Autowired
    private GenresService genreService;

    @Autowired
    private IMoviesService iMoviesService;

    @Autowired
    private IJobsService iJobsService;

    @Autowired
    private ICelebritiesService iCelebritiesService;

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        if (modelAndView != null) {
            // Lấy danh sách category từ service
            List<CategoryMovie> categoryMovieList = iCategoriesMoviesService.getListCategoriesMovies();
            modelAndView.addObject("categoryMovieList", categoryMovieList);

            // Lấy danh sách genre từ service
            List<Genre> genreList = genreService.getListGenres();
            modelAndView.addObject("genreList", genreList);

            List<Movies> getMovieSlide = iMoviesService.getListMovies();
            modelAndView.addObject("categoryMovieList", iCategoriesMoviesService.getListCategoriesMovies());
            modelAndView.addObject("getMovieSlide", getMovieSlide);

            //Lấy danh sách job
            List<Job> jobList = iJobsService.getListJobs();
            modelAndView.addObject("jobList", jobList);

            //Lấy danh sách celebrity
            List<Celebrity> celebrityList = iCelebritiesService.getListCelebrities();
            modelAndView.addObject("celebrityList", celebrityList);

            //Lấy danh sách phim bộ
            List<Movies> getMovieBySeries = iMoviesService.getListMovies().stream().filter(movies -> movies.getIsSeries() == 0).limit(10).collect(Collectors.toList());
            modelAndView.addObject("getMovieBySeries",getMovieBySeries);
            //Lấy danh sách phim lẻ
            List<Movies> getMovieBySingle = iMoviesService.getListMovies().stream().filter(movies -> movies.getIsSeries() == 1).limit(10).collect(Collectors.toList());
            modelAndView.addObject("getMovieBySingle",getMovieBySingle);
        }
    }
}

