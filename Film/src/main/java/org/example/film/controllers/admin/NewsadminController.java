package org.example.film.controllers.admin;

import org.example.film.models.entities.Category;
import org.example.film.models.entities.News;
import org.example.film.models.requests.news.AddNewRequest;
import org.example.film.models.requests.news.EditNewRequest;
import org.example.film.services.categories.CategoriesService;
import org.example.film.services.news.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/admin-newspage")
public class NewsadminController {
    @Autowired
    private NewsService iNewsService;
    @Autowired
    private CategoriesService iCategoriesService;
    @GetMapping("")
    public String get(Model model){
        List<News> getListNews = iNewsService.getListNews();
        model.addAttribute("getListNews",getListNews);
        return "admin/news/index";
    }
    @GetMapping("/{id}")
    public ResponseEntity<Optional<News>> getNewsById(@PathVariable String id){
        try {
            Optional<News> getNews = iNewsService.getNewById(id);
            if (getNews.isPresent()){
                return ResponseEntity.ok(getNews);
            }else {
                return ResponseEntity.notFound().build();
            }
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    @GetMapping("/add")
    public String add(Model model, AddNewRequest addMovieRequest){
        model.addAttribute("addNewRequest", addMovieRequest);
        List<Category> categoryMovieList = iCategoriesService.getListCategory();
        model.addAttribute("categoryList",categoryMovieList);
        return "admin/News/add";
    }

    @GetMapping("/edit")
    public String edit(Model model, EditNewRequest editMovieRequest){
        model.addAttribute("editNewRequest",editMovieRequest);
        List<Category> categoryMovieList = iCategoriesService.getListCategory();
        model.addAttribute("categoryList",categoryMovieList);
        return "admin/News/edit";
    }
}
