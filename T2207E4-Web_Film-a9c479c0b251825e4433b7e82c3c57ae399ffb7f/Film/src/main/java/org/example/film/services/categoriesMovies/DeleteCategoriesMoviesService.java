package org.example.film.services.categoriesMovies;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.requests.categoriesMovies.DeleteCategoryMovieRequest;
import org.example.film.repositories.ICategoriesMovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DeleteCategoriesMoviesService implements IRequestHandler<DeleteCategoryMovieRequest, String> {
    @Autowired
    private ICategoriesMovieRepository iCategoriesMovieRepository;


    @Override
    public HandleResponse<String> handle(DeleteCategoryMovieRequest deleteCategoryMovieRequest) throws Exception {
        Optional<CategoryMovie> categoryMovieExist = iCategoriesMovieRepository.findById(deleteCategoryMovieRequest.getId());
        if(categoryMovieExist.isEmpty()){
            return HandleResponse.error("Category movie does not exist.");
        }else {
            iCategoriesMovieRepository.delete(categoryMovieExist.get());
            return HandleResponse.ok("Category movie successfully.");
        }
    }
}
