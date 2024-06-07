package org.example.film.services.news;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.News;
import org.example.film.models.requests.news.AddNewRequest;
import org.example.film.repositories.ICategoriesRepository;
import org.example.film.repositories.INewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
@RequiredArgsConstructor
public class AddNewsService implements IRequestHandler<AddNewRequest,String> {

    @Autowired
    private INewsRepository iNewsRepository;
    @Autowired
    ICategoriesRepository iCategoriesRepository;
    @Override
    public HandleResponse<String> handle(AddNewRequest addNewRequest) throws Exception {
        var existingCategory = iCategoriesRepository.findAllById(addNewRequest.getCategoriesId());
        if(iNewsRepository.findByName(addNewRequest.getName()).isPresent()){
            return HandleResponse.error("news already exists");
        } else if (existingCategory.isEmpty()) {
            return HandleResponse.error("Job does not exist.");
        } else {
            News setNews = new News();
            setNews.setName(addNewRequest.getName());
            setNews.setCreatedAdd(new Date());
            setNews.setTag(addNewRequest.getTag());
            setNews.setDescription(addNewRequest.getDescription());
            setNews.setStatus(addNewRequest.getStatus());
            setNews.setCategories(existingCategory);
            iNewsRepository.save(setNews);
            return HandleResponse.ok("News successfully added : " + setNews.getName());
        }
    }
}
