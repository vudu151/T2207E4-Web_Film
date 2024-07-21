package org.example.film.controllers.admin;

import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Reviews;
import org.example.film.services.movies.IMoviesService;
import org.example.film.services.reviews.IReviewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin-review")
public class ReviewsController {
    @Autowired
    private IReviewsService iReviewsService;

    @Autowired
    private IMoviesService iMoviesService;
    @GetMapping("/")
    public String get(@RequestParam(name = "page", defaultValue = "1") int page,
                      @RequestParam(name = "size", defaultValue = "6") int size,
                      Model model){
        List<Movies> getMoviesInReview = iReviewsService.getAllReviewedMovies();
        int startIndex = (page - 1) * size;
        int endIndex = Math.min(startIndex + size, getMoviesInReview.size());
        List<Movies> paginationMoviesInReview = getMoviesInReview.subList(startIndex, endIndex);
        model.addAttribute("Movies",paginationMoviesInReview);
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size); // Thay size bằng giá trị phù hợp từ controller của bạn
        model.addAttribute("totalPages", (int) Math.ceil((double) getMoviesInReview.size() / size));
        return "admin/reviews/listReview";
    }

    @GetMapping("/review/{id}")
    public String getReview(@PathVariable String id, Model model){
        Movies getMovie = iMoviesService.getMovieById(id).get();
        List<Reviews> getReviews = iReviewsService.getAllReviewByMovie(getMovie);
        model.addAttribute("getReviews",getReviews);
        return "admin/reviews/listReviewMovie";
    }
}
