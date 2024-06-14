package org.example.film.services.categories;

import com.github.slugify.Slugify;
import lombok.*;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Category;
import org.example.film.models.requests.categoies.EditCategoriesRequest;
import org.example.film.repositories.ICategoriesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class EditCategoriesService implements IRequestHandler<EditCategoriesRequest,String> {
    @Autowired
    private ICategoriesRepository iCategoriesRepository;

    @Override
    public HandleResponse<String> handle(EditCategoriesRequest editCategoriesRequest) throws Exception {
        Optional<Category> categoryIdExist = iCategoriesRepository.findById(editCategoriesRequest.getId());
        Optional<Category> categoryNameExist = iCategoriesRepository.findByName(editCategoriesRequest.getName());
        Optional<Category> categorySlugExist = iCategoriesRepository.findBySlug(editCategoriesRequest.getSlug());
        if(categoryIdExist.isEmpty()){
            return HandleResponse.error("category news id  does not exist.");
        } else if (categoryNameExist.isPresent()) {
            return HandleResponse.error("category news name does exist.");
        } else if (categorySlugExist.isPresent()) {
            return HandleResponse.error("category movie slug does exist.");
        } else {
            Category setCategory = categoryIdExist.get();
            setCategory.setName(editCategoriesRequest.getName());
            Slugify slg = new Slugify();
            setCategory.setSlug(slg.slugify(editCategoriesRequest.getName()));
            setCategory.setStatus(editCategoriesRequest.getStatus());
            iCategoriesRepository.save(setCategory);
            return HandleResponse.ok("Category news successfully Update : " + setCategory.getName());
        }
    }
}
