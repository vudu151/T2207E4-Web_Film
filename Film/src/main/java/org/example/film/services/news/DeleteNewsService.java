package org.example.film.services.news;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.News;
import org.example.film.models.requests.news.DeleteNewRequest;
import org.example.film.repositories.INewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DeleteNewsService implements IRequestHandler<DeleteNewRequest,String> {
    @Autowired
    private INewsRepository iNewsRepository;

    @Override
    public HandleResponse<String> handle(DeleteNewRequest deleteNewRequest) throws Exception {
        Optional<News> newsIdExist = iNewsRepository.findById(deleteNewRequest.getId());
        if (newsIdExist.isEmpty()){
            return HandleResponse.error("News does not exist.");
        }else {
            iNewsRepository.delete(newsIdExist.get());
            return HandleResponse.ok("Delete news successfully.");
        }
    }
}
