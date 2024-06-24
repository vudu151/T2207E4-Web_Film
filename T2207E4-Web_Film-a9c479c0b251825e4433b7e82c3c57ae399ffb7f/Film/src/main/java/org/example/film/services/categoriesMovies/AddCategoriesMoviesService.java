package org.example.film.services.categoriesMovies;

import com.github.slugify.Slugify;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.requests.categoriesMovies.AddCategoryMovieRequest;
import org.example.film.repositories.ICategoriesMovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AddCategoriesMoviesService implements IRequestHandler<AddCategoryMovieRequest,String> {
    @Autowired
    private ICategoriesMovieRepository iCategoriesMovieRepository;
    @Override
    public HandleResponse<String> handle(AddCategoryMovieRequest addCategoryMovieRequest) throws Exception {
        if (iCategoriesMovieRepository.findByName(addCategoryMovieRequest.getName()).isPresent()){
            return HandleResponse.error("category movie already exists");
        }
        else {
            CategoryMovie categoryMovie = new CategoryMovie();
            categoryMovie.setName(addCategoryMovieRequest.getName());
            Slugify slg = new Slugify();
            categoryMovie.setSlug(slg.slugify(addCategoryMovieRequest.getName()));
            categoryMovie.setStatus(addCategoryMovieRequest.getStatus());
            iCategoriesMovieRepository.save(categoryMovie);
            return HandleResponse.ok("Category Movie successfully added : " + categoryMovie.getName());
        }
    }
}
