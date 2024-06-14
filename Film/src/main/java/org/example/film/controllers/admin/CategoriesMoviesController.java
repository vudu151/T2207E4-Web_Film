package org.example.film.controllers.admin;

import org.example.film.models.entities.CategoryMovie;
import org.example.film.models.requests.categoies.AddCategoriesRequest;
import org.example.film.services.categoriesMovies.ICategoriesMoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin-categoriesMovies")
public class CategoriesMoviesController {
    @Autowired
    private ICategoriesMoviesService iCategoriesMoviesService;

    @GetMapping("")
    public String listCategoryMovie(Model model){
        List<CategoryMovie> categoryMovieList = iCategoriesMoviesService.getListCategoriesMovies();
        model.addAttribute("categoryMovieList",categoryMovieList);
        return "admin/categoriesMovies/index";
    }
    @GetMapping("/add")
    public String add(Model model, AddCategoriesRequest addCategoriesRequest){
        model.addAttribute("addCategoriesRequest",addCategoriesRequest);
        return "admin/categoriesMovies/add";
    }

    @GetMapping("/edit")
    public String edit(){
        return "admin/categoriesMovies/edit";
    }


}
