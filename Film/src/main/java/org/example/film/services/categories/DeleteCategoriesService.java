package org.example.film.services.categories;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Category;
import org.example.film.models.requests.categoies.DeleteCategoriesRequest;
import org.example.film.repositories.ICategoriesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DeleteCategoriesService implements IRequestHandler<DeleteCategoriesRequest,String> {
    @Autowired
    private ICategoriesRepository iCategoriesRepository;

    @Override
    public HandleResponse<String> handle(DeleteCategoriesRequest deleteCategoriesRequest) throws Exception {
        Optional<Category> categoryIdExist = iCategoriesRepository.findById(deleteCategoriesRequest.getId());
        if(categoryIdExist.isEmpty()){
            return HandleResponse.error("Category news does not exist.");
        }else {
            iCategoriesRepository.delete(categoryIdExist.get());
            return HandleResponse.ok("Delete category news successfully.");
        }
    }
}
