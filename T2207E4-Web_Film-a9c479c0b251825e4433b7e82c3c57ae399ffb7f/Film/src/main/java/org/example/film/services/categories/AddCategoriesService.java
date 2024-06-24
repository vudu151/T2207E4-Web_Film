package org.example.film.services.categories;

import com.github.slugify.Slugify;
import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Category;
import org.example.film.models.requests.categoies.AddCategoriesRequest;
import org.example.film.repositories.ICategoriesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AddCategoriesService implements IRequestHandler<AddCategoriesRequest,String> {

    @Autowired
    private ICategoriesRepository iCategoriesRepository;
    @Override
    public HandleResponse<String> handle(AddCategoriesRequest addCategoriesRequest) throws Exception {
        if (iCategoriesRepository.findByName(addCategoriesRequest.getName()).isPresent()){
            return HandleResponse.error("category news already exists");
        }
        else {
            Category setCategory = new Category();
            setCategory.setName(addCategoriesRequest.getName());
            Slugify slg = new Slugify();
            setCategory.setSlug(slg.slugify(addCategoriesRequest.getName()));
            setCategory.setStatus(addCategoriesRequest.getStatus());
            iCategoriesRepository.save(setCategory);
            return HandleResponse.ok("Category News successfully added : " + setCategory.getName());
        }
    }
}
