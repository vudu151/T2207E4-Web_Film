package org.example.film.controllers;

import org.example.film.models.entities.Category;
import org.example.film.models.entities.News;
import org.example.film.models.entities.procedure.newsSp;
import org.example.film.models.entities.procedure.newscateSp;
import org.example.film.services.news.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/newsday")
public class NewsController {
    private final NewsService newsService;

    public NewsController(NewsService newsService) {
        this.newsService = newsService;
    }

    @GetMapping("")
    public String listNews(
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "9") int pageSize,
            @RequestParam(defaultValue = "") String keyword,
            Model model) {
        List<newsSp > newsp = newsService.GetNewsPage(page, pageSize, keyword);
        List<News> newsList = newsService.getListNews();
        List<News> popularNews = newsList.stream()
                .sorted(Comparator.comparing(News::getViewCount).reversed())
                .limit(3)
                .collect(Collectors.toList());
        List<Category> categories = newsService.getAllCategories();
        model.addAttribute("newsList", newsp);
        model.addAttribute("popularNews", popularNews);
        model.addAttribute("categories", categories);
        model.addAttribute("totalPages",
                newsp.get(0).getTotalpageds() != null ? newsp.get(0).getTotalpageds() : 1
        );
        model.addAttribute("totalElements",
                newsp.get(0).getTotalnewss() != null ? newsp.get(0).getTotalnewss() : 0
        );
        model.addAttribute("pageSize", pageSize);
        model.addAttribute("currentPages", page);
        model.addAttribute("keyword", keyword);
        return "public/news/listtest";
    }

    @GetMapping("/news/{id}")
    public String newsDetail(@PathVariable String id, Model model) {
        News news = newsService.getNewsById(id);
        news.setViewCount(news.getViewCount() + 1);
        newsService.saveOrUpdate(news);
        List<Category> categories = newsService.getAllCategories();
        List<Category> newsCategories = newsService.getCategoriesForNews(id);
        List<News> newsList = newsService.getListNews();
        List<News> popularNews = newsList.stream()
                .sorted(Comparator.comparing(News::getViewCount).reversed())
                .limit(3)
                .collect(Collectors.toList());
        model.addAttribute("news", news);
        model.addAttribute("categories", categories);
        model.addAttribute("popularNews", popularNews);
        model.addAttribute("newsCategories", newsCategories);
        return "public/news/detailtest";
    }

    @GetMapping("/category/{id}")
    public String newsByCategory(  @RequestParam(defaultValue = "1") int page,
                                   @RequestParam(defaultValue = "9") int pageSize,
                                   @RequestParam(defaultValue = "") String keyword,@PathVariable String id, Model model) {
        List<newscateSp> newsList = newsService.GetNewscatePage(page, pageSize, keyword,id);
        List<Category> categories = newsService.getAllCategories();
        model.addAttribute("newsList", newsList);
        model.addAttribute("totalPages",
                newsList.get(0).getTotalpageds() != null ? newsList.get(0).getTotalpageds() : 1
        );
        model.addAttribute("totalElements",
                newsList.get(0).getTotalnewss() != null ? newsList.get(0).getTotalnewss() : 0
        );
        model.addAttribute("categories", categories);
        model.addAttribute("pageSize", pageSize);
        model.addAttribute("currentPages", page);
        model.addAttribute("keyword", keyword);
        return "public/news/listtest";
    }
}