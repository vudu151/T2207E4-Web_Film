package org.example.film.services.news;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.News;
import org.example.film.models.requests.news.EditNewRequest;
import org.example.film.repositories.ICategoriesRepository;
import org.example.film.repositories.INewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class EditNewsService implements IRequestHandler<EditNewRequest,String> {
    @Autowired
    private INewsRepository iNewsRepository;
    @Autowired
    private ICategoriesRepository iCategoriesRepository;
    @Override
    public HandleResponse<String> handle(EditNewRequest editNewRequest) throws Exception {
        Optional<News> newsIdExist = iNewsRepository.findById(editNewRequest.getId());
        var existingCategory = iCategoriesRepository.findAllById(editNewRequest.getCategoriesId());
        if (newsIdExist.isEmpty()){
            return HandleResponse.error("news id does not exist.");
        }
        else {
            News setNews = newsIdExist.get();
            setNews.setName(editNewRequest.getName());
            setNews.setUpdateAdd(new Date());
            setNews.setTag(editNewRequest.getTag());
            setNews.setDescription(editNewRequest.getDescription());
            setNews.setStatus(editNewRequest.getStatus());
            setNews.setCategories(existingCategory);
            iNewsRepository.save(setNews);
            return HandleResponse.ok("News successfully Update : " + setNews.getName());
        }
    }
}
