package org.example.film.services.news;

import jakarta.transaction.Transactional;
import org.example.film.models.entities.Category;
import org.example.film.models.entities.News;
import org.example.film.models.entities.procedure.moviesp;
import org.example.film.models.entities.procedure.newsSp;
import org.example.film.models.entities.procedure.newscateSp;
import org.example.film.repositories.ICategoriesRepository;
import org.example.film.repositories.INewsRepository;
import org.example.film.repositories.procedure.INewsSPRepository;
import org.example.film.repositories.procedure.INewscateSPRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class NewsService implements INewsService{

    @Autowired
    private INewsRepository iNewsRepository;
    @Autowired
    private INewsSPRepository iNewsSPRepository;
    @Autowired
    private INewscateSPRepository iNewscateSPRepository;

    @Autowired
    private ICategoriesRepository categoryRepository;
    @Override
    public List<News> getListNews() {
        return iNewsRepository.findAll();
    }

    @Override
    public Optional<News> getNewById(String id) {
        return iNewsRepository.findById(id);
    }

    public News getNewsById(String id) {
        return iNewsRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("News not found"));
    }

    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }

    public List<News> getNewsByCategory(String categoryId) {
        Category category = categoryRepository.findById(categoryId).orElseThrow(() -> new IllegalArgumentException("Category not found"));
        return category.getNews();
    }
    public List<Category> getCategoriesForNews(String newsId) {
        News news = iNewsRepository.findById(newsId).orElseThrow(() -> new IllegalArgumentException("Category not found"));
        return news.getCategories();
    }
   public  void saveOrUpdate(News news) {
          iNewsRepository.save(news);
   }


    @Transactional
    public List<newsSp> GetNewsPage(int page, int size, String searchTerm
    ){
        return iNewsSPRepository.GetNewsPage(page, size,  searchTerm  );
 }
    @Transactional
    public List<newscateSp> GetNewscatePage(int page, int size, String searchTerm,String cateid
    ){
        return iNewscateSPRepository.GetNewscatePage(page, size,  searchTerm ,cateid );
    }
}
