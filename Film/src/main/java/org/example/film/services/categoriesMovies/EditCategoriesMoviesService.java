package org.example.film.services.categoriesMovies;

import com.github.slugify.Slugify;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.requests.categoriesMovies.EditCategoryMovieRequest;
import org.example.film.repositories.ICategoriesMovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EditCategoriesMoviesService implements IRequestHandler<EditCategoryMovieRequest,String> {
    @Autowired
    private ICategoriesMovieRepository iCategoriesMovieRepository;
    @Override
    public HandleResponse<String> handle(EditCategoryMovieRequest editCategoryMovieRequest) throws Exception {
        Optional<CategoryMovie> categoryMovieIdExist = iCategoriesMovieRepository.findById(editCategoryMovieRequest.getId());
        Optional<CategoryMovie> categoryMovieNameExist = iCategoriesMovieRepository.findByName(editCategoryMovieRequest.getName());
        if(categoryMovieNameExist.isPresent()){
            return HandleResponse.error("category movie name does exist.");
        } else if (categoryMovieIdExist.isEmpty()) {
            return HandleResponse.error("category movie id  does not exist.");
        }else {
            CategoryMovie categoryMovie = categoryMovieIdExist.get();
            categoryMovie.setName(editCategoryMovieRequest.getName());
            Slugify slg = new Slugify();
            categoryMovie.setSlug(slg.slugify(editCategoryMovieRequest.getName()));
            categoryMovie.setStatus(editCategoryMovieRequest.getStatus());
            iCategoriesMovieRepository.save(categoryMovie);
            return HandleResponse.ok("Category Movie successfully Update : " + categoryMovie.getName());
        }
    }
}
