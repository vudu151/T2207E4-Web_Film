package org.example.film.controllers;

import lombok.AllArgsConstructor;
import org.example.film.models.entities.Genre;
import org.example.film.models.entities.procedure.moviesp;
//import org.example.film.models.entities.procedure.moviesp2;
import org.example.film.services.categoriesMovies.CategoriesMoviesService;
import org.example.film.services.genres.GenresService;
import org.example.film.services.movies.MoviesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

    @Controller
    @AllArgsConstructor
    @RequestMapping("/moviefind")
    public class MovieSearchController {

        private final MoviesService moviesService;
        private final GenresService genresService;

        private final CategoriesMoviesService categoriesMoviesService;


        @GetMapping
        public String getCustomerPage(
                @RequestParam(defaultValue = "1") int page,
                @RequestParam(defaultValue = "5") int pageSize,
                @RequestParam(defaultValue = "") String keyword,
                @RequestParam(defaultValue = "") String genres,
//                @RequestParam(required = false, defaultValue = "0") int ratingfrom,
//                @RequestParam(required = false, defaultValue = "90") int ratingto,
                @RequestParam( defaultValue = "1800") int yearfrom,
                @RequestParam(  defaultValue = "3100") int yearto,
                Model model
        ) {
            List<moviesp> movies  = moviesService.GetMoviePaging(page,pageSize,  keyword
                    ,
                    genres
                    ,
//                    ratingfrom, ratingto,
                    yearfrom,yearto
            );
            if (movies.isEmpty()){
                return "public/searchmovie/notfound";
            }
            List<Genre> genreList = genresService.getListGenres(); // Retrieve all genres from the database
            model.addAttribute("movies", movies );
            model.addAttribute("totalPages",  movies.get(0).getTotalpages() != null ? movies.get(0).getTotalpages() : 1
    );
            model.addAttribute("totalElements",movies.get(0).getTotalitems() != null ? movies.get(0).getTotalitems() : 0
  );
            model.addAttribute("pageSize", pageSize);
            model.addAttribute("currentPages", page);
            model.addAttribute("keyword", keyword);
            model.addAttribute("genres", genres);
            model.addAttribute("genreList", genreList);
//            model.addAttribute("ratingfrom", ratingfrom);
//            model.addAttribute("ratingto", ratingto);
            model.addAttribute("yearfrom", yearfrom);
            model.addAttribute("yearto", yearto);
            return "public/searchmovie/index";
        }

//        @GetMapping("/test")
//        public String getCustomerPage2(      @RequestParam(defaultValue = "1") int page, Model model
//        ) {
//            List<moviesp2> movies  = moviesService.TestGetMoviePage(page);
//            model.addAttribute("movies", movies );
//            return "public/searchmovie/index2";
//        }
     }
