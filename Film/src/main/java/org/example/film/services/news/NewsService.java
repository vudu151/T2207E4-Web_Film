package org.example.film.services.news;

import org.example.film.models.entities.News;
import org.example.film.repositories.INewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class NewsService implements INewsService{

    @Autowired
    private INewsRepository iNewsRepository;
    @Override
    public List<News> getListNews() {
        return iNewsRepository.findAll();
    }

    @Override
    public Optional<News> getNewById(String id) {
        return iNewsRepository.findById(id);
    }
}
