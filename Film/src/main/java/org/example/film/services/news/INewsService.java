package org.example.film.services.news;

import org.example.film.models.entities.News;

import java.util.List;
import java.util.Optional;

public interface INewsService {
    List<News> getListNews();
    Optional<News> getNewById(String id);
}
