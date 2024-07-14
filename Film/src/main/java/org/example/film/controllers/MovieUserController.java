package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.*;
import org.example.film.services.actors.IActorService;
import org.example.film.services.castings.ICastingService;
import org.example.film.services.categoriesMovies.ICategoriesMoviesService;
import org.example.film.services.directors.IDirectorsService;
import org.example.film.services.episodes.IEpisodesService;
import org.example.film.services.genres.IGenresService;
import org.example.film.services.movies.IMoviesService;
import org.example.film.services.reviews.IReviewsService;
import org.example.film.services.reviews.ReviewsService;
import org.example.film.services.writers.IWritersService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
@RequestMapping("/movie")
public class MovieUserController {
    private final IMoviesService iMoviesService;
    private final IActorService iActorService;
    private final IWritersService iWritersService;
    private final IDirectorsService iDirectorsService;
    private final IReviewsService iReviewsService;
    private final ICategoriesMoviesService iCategoriesMoviesService;
    private final IGenresService iGenresService;
    private final ReviewsService reviewsService;
    private final IEpisodesService iEpisodesService;

        @GetMapping("/get/{id}")
        public String getMovie(@PathVariable String id, Model model) {
            Movies getMovieId = iMoviesService.getMovieById(id).get();
            List<String> getImagesMovie = getMovieId.getImages();
            List<Genre> getGenresMovie = getMovieId.getGenreList();
            List<Actors> getActorMovie = iActorService.getActorByMovieId(getMovieId).stream().filter(actors -> actors.getStatus()==1).collect(Collectors.toList());
            List<Movies> relatedMovies = iMoviesService.getCategoryByMovieid(getMovieId.getCategoryMovieId()).stream().filter(movies -> movies.getIsSeries() == getMovieId.getIsSeries()).limit(5).collect(Collectors.toList());
            List<Writers> getWriterMovie = iWritersService.getWritersByMovieId(getMovieId).stream().filter(writers -> writers.getStatus()==1).collect(Collectors.toList());
            List<Director> getDirectorMovie = iDirectorsService.getDirectorByMovie(getMovieId).stream().filter(director -> director.getStatus()==1).collect(Collectors.toList());
            List<Reviews> getReviewByMovie = iReviewsService.getAllReviewByMovie(getMovieId);
            List<Episode> getEpisode = iEpisodesService.getEpisodeByMovieId(getMovieId).stream().filter(episode -> episode.getStatus()==1).sorted(Comparator.comparing(Episode::getName)).limit(1).toList();
            if (!getEpisode.isEmpty()){
                Episode firstEpisode = getEpisode.getFirst();
                // Xử lý dữ liệu của episode đầu tiên và truyền vào model
                model.addAttribute("firstEpisode", firstEpisode);
            }
            if(getEpisode.isEmpty()){
                String dataNotFound = "Comming Soon";
                model.addAttribute("dataNotFound", dataNotFound);
            }
        double checkAverageRating = reviewsService.getAverageStarByMovieId(id);
        double averageRating;
        if(checkAverageRating>0){
            averageRating = checkAverageRating;
        }else {
            averageRating = 0;
        }
        model.addAttribute("relatedMovies",relatedMovies);
        model.addAttribute("getMovieId",getMovieId);
        model.addAttribute("getGenresMovie",getGenresMovie);
        model.addAttribute("getImagesMovie",getImagesMovie);
        model.addAttribute("getActorMovie",getActorMovie);
        model.addAttribute("getWriterMovie",getWriterMovie);
        model.addAttribute("getDirectorMovie",getDirectorMovie);
        model.addAttribute("getReviewByMovie",getReviewByMovie);
        model.addAttribute("averageRating",averageRating);
        model.addAttribute("getEpisode",getEpisode);
        return "public/movies/movie-detail";
    }

    @GetMapping("/search")
    @ResponseBody
    public List<Movies> searchMovies(@RequestParam("query") String query) {
        // Gọi service để tìm kiếm phim dựa trên query
        List<Movies> movies = iMoviesService.searchMovie(query).stream().limit(2).collect(Collectors.toList());
        return movies;
    }
    @GetMapping("/category/{id}")
    public String getMovieCategory(@PathVariable String id,
                                       @RequestParam(name = "page", defaultValue = "1") int page,
                                       @RequestParam(name = "size", defaultValue = "2") int size,
                                   Model model) {
        Optional<CategoryMovie> getCategory = iCategoriesMoviesService.getCategoryMovieById(id);

        // Lấy danh sách phim theo id thể loại và lọc theo trạng thái
        List<Movies> getListMovies = iMoviesService.getCategoryByMovieid(getCategory.get())
                .stream()
                .filter(movies -> movies.getStatus() == 1)
                .collect(Collectors.toList());

        // Phân trang
        int startIndex = (page - 1) * size;
        int endIndex = Math.min(startIndex + size, getListMovies.size());

        List<Movies> paginatedListMovies = getListMovies.subList(startIndex, endIndex);

        // Lấy trung bình số sao của từng bộ phim và truyền vào model
        model.addAttribute("getListMovies", paginatedListMovies);
        model.addAttribute("getCategory", getCategory.get());

        // Thêm thông tin phân trang vào model
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size); // Thay size bằng giá trị phù hợp từ controller của bạn
        model.addAttribute("totalPages", (int) Math.ceil((double) getListMovies.size() / size));
        return "public/movies/index";
    }


    @GetMapping("/genre/{id}")
    public String getMovieGenre(@PathVariable List<String> id,
                                @RequestParam(name = "page", defaultValue = "1") int page,
                                @RequestParam(name = "size", defaultValue = "2") int size,
                                Model model){

        List<Movies> getListMovie = iMoviesService.getMoviesGenres(id).stream().filter(movies -> movies.getStatus()==1).collect(Collectors.toList());
        int startIndex = (page - 1) * size;
        int endIndex = Math.min(startIndex + size, getListMovie.size());
        List<Movies> paginatedListMovies = getListMovie.subList(startIndex, endIndex);

        Optional<Genre> getGenre = iGenresService.getGenreById(getListMovie.getFirst().getGenre().getId());
                model.addAttribute("getListMovie",paginatedListMovies);
                model.addAttribute("currentPage", page);
                model.addAttribute("size", size);
                model.addAttribute("getGenre",getGenre);
        model.addAttribute("totalPages", (int) Math.ceil((double) getListMovie.size() / size));
        return "public/movies/genre-movie";
    }

    @GetMapping("/watchMovie/{id}")
    public String watchMovie(@PathVariable String id,  Model model){
        Movies getMovie = iMoviesService.getMovieById(id).get();
        Genre genre = iGenresService.getGenreById(getMovie.getGenre().getId()).get();
        List<String> listGenres = Collections.singletonList(genre.getId());
        List<Movies> relatedMovies = iMoviesService.getMoviesGenres(listGenres);
        List<Episode> getListEpisodeMovie = iEpisodesService.getEpisodeByMovieId(getMovie).stream().filter(episode -> episode.getStatus()==1).sorted(Comparator.comparing(Episode::getName)).collect(Collectors.toList());
        model.addAttribute("getListEpisodeMovie",getListEpisodeMovie);
        model.addAttribute("relatedMovies",relatedMovies);
        model.addAttribute("getMovie",getMovie);
        return "public/episodes/detail3";
    }

    @GetMapping("/episodeMovie/{id}")
    public String episodeMovie(@PathVariable String id, Model model){
        Episode getEpisode = iEpisodesService.getEpisodeById(id).get();
        Movies getMovie = iMoviesService.getMovieById(getEpisode.getMovieId().getId()).get();
        List<Episode> getListEpisodeMovie = iEpisodesService.getEpisodeByMovieId(getMovie).stream().filter(episode -> episode.getStatus()==1).sorted(Comparator.comparing(Episode::getName)).collect(Collectors.toList());
        model.addAttribute("getEpisode",getEpisode);
        model.addAttribute("getListEpisodeMovie",getListEpisodeMovie);
        model.addAttribute("getMovie",getMovie);
        return "public/episodes/detail4";
    }
}
