package org.example.film.commons.globalmodelinterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.film.configurations.securities.CustomUserDetails;
import org.example.film.controllers.CustomOAuth2User;
import org.example.film.models.entities.*;
import org.example.film.services.auth.AccountsService;
import org.example.film.services.categoriesMovies.CategoriesMoviesService;
import org.example.film.services.categoriesMovies.ICategoriesMoviesService;
import org.example.film.services.celebrities.ICelebritiesService;
import org.example.film.services.favourites.IFavouritesService;
import org.example.film.services.genres.GenresService;
import org.example.film.services.jobs.IJobsService;
import org.example.film.services.movies.IMoviesService;
import org.example.film.services.movies.MoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;
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

    @Autowired
    private IFavouritesService iFavouritesService;

    @Autowired
    private AccountsService accountsService;

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        if (modelAndView != null) {
            // Lấy danh sách category từ service
            List<CategoryMovie> categoryMovieList = iCategoriesMoviesService.getListCategoriesMovies();
            modelAndView.addObject("categoryMovieList", categoryMovieList);

            // Lấy danh sách genre từ service
            List<Genre> genreList = genreService.getListGenres();
            modelAndView.addObject("genreList", genreList);

            List<Movies> getMovieSlide = iMoviesService.getListMovies().stream().filter(movies -> movies.getIsPopular() == 0 && movies.getStatus() == 1).limit(12).collect(Collectors.toList());
            modelAndView.addObject("categoryMovieList", iCategoriesMoviesService.getListCategoriesMovies());
            modelAndView.addObject("getMovieSlide", getMovieSlide);

            //Lấy danh sách job
            List<Job> jobList = iJobsService.getListJobs();
            modelAndView.addObject("jobList", jobList);

            //Lấy danh sách celebrity
            List<Celebrity> celebrityList = iCelebritiesService.getListCelebrities();
            modelAndView.addObject("celebrityList", celebrityList);

            //Lấy danh sách phim bộ
            List<Movies> getMovieBySeriesInPopular = iMoviesService.getListMovies().stream().filter(movies -> movies.getIsSeries() == 0 && movies.getIsPopular()==0 && movies.getStatus() == 1).limit(12).collect(Collectors.toList());
            modelAndView.addObject("getMovieBySeriesInPopular",getMovieBySeriesInPopular);

            List<Movies> getMovieBySeriesInCommingSoon = iMoviesService.getListMovies().stream().filter(movies -> movies.getIsSeries() == 0 && movies.getScreeningStatus()==0 && movies.getStatus() == 1).limit(12).collect(Collectors.toList());
            modelAndView.addObject("getMovieBySeriesInCommingSoon",getMovieBySeriesInCommingSoon);

            //Lấy danh sách phim lẻ
            List<Movies> getMovieBySinglePopular = iMoviesService.getListMovies().stream().filter(movies -> movies.getIsSeries() == 1 && movies.getIsPopular()==0 && movies.getStatus() == 1).limit(12).collect(Collectors.toList());
            modelAndView.addObject("getMovieBySinglePopular",getMovieBySinglePopular);

            List<Movies> getMovieBySingleInCommingSoon = iMoviesService.getListMovies().stream().filter(movies -> movies.getIsSeries() == 1 && movies.getScreeningStatus()==0 && movies.getStatus() == 1).limit(12).collect(Collectors.toList());
            modelAndView.addObject("getMovieBySingleInCommingSoon",getMovieBySingleInCommingSoon);

            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            if(authentication != null && authentication.isAuthenticated()){
                Object principal = authentication.getPrincipal();
                if(principal instanceof CustomUserDetails customUserDetails){
                    String account_id = customUserDetails.getAccount().getId();
                    String nameAccount = customUserDetails.getAccount().getUserName();
                    String avatarAccount = customUserDetails.getAccount().getAvatar();
                    int buyMovie = customUserDetails.getAccount().getLevel();
                    List<Favourites> favourites = iFavouritesService.getListFavouritesAccount(account_id);
                    List<String> favoriteMovieIds = favourites.stream().map(f -> f.getMovies().getId()).collect(Collectors.toList());
                    modelAndView.addObject("favoriteMovieIds",favoriteMovieIds);
                    modelAndView.addObject("account_id",account_id);
                    modelAndView.addObject("buyMovie",buyMovie);
                    modelAndView.addObject("avatarAccount",avatarAccount);
                    modelAndView.addObject("nameAccount",nameAccount);
                }
                if(principal instanceof CustomOAuth2User customUserDetails){
                    String account_id = accountsService.loadUserByUsername(customUserDetails.getEmail()).getAccount().getId();
                    String nameAccount = accountsService.loadUserByUsername(customUserDetails.getEmail()).getAccount().getUserName();
                    String avatarAccount = accountsService.loadUserByUsername(customUserDetails.getEmail()).getAccount().getAvatar();
                    int buyMovie = accountsService.loadUserByUsername(customUserDetails.getEmail()).getAccount().getLevel();
                    List<Favourites> favourites = iFavouritesService.getListFavouritesAccount(account_id);
                    List<String> favoriteMovieIds = favourites.stream().map(f -> f.getMovies().getId()).collect(Collectors.toList());
                    modelAndView.addObject("favoriteMovieIds",favoriteMovieIds);
                    modelAndView.addObject("account_id",account_id);
                    modelAndView.addObject("buyMovie",buyMovie);
                    modelAndView.addObject("avatarAccount",avatarAccount);
                    modelAndView.addObject("nameAccount",nameAccount);
                }
            }
        }
    }
}

