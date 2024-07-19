package org.example.film.services.categoriesMovies;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.categoriesMovies.DeleteCategoryMovieRequest;
import org.example.film.repositories.ICategoriesMovieRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DeleteCategoriesMoviesService implements IRequestHandler<DeleteCategoryMovieRequest, String> {
    @Autowired
    private ICategoriesMovieRepository iCategoriesMovieRepository;

    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Override
    public HandleResponse<String> handle(DeleteCategoryMovieRequest deleteCategoryMovieRequest) throws Exception {
        Optional<CategoryMovie> categoryMovieExist = iCategoriesMovieRepository.findById(deleteCategoryMovieRequest.getId());
        List<Movies> exitingMovieByCategory = iMoviesRepository.findMoviesByCategoryMovieId(categoryMovieExist.get());
        if(categoryMovieExist.isEmpty()){
            return HandleResponse.error("Category movie does not exist.");
        } else if (!exitingMovieByCategory.isEmpty()) {
            return HandleResponse.error("You must delete the movie first");
        } else {
            iCategoriesMovieRepository.delete(categoryMovieExist.get());
            return HandleResponse.ok("Category movie successfully.");
        }
    }
}
