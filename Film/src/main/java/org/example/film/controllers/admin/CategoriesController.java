package org.example.film.controllers.admin;

import org.example.film.models.entities.Category;
import org.example.film.models.entities.Genre;
import org.example.film.models.requests.categoies.AddCategoriesRequest;
import org.example.film.models.requests.genres.AddGenreRequest;
import org.example.film.services.categories.ICategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("admin-categories")
public class CategoriesController {
    @Autowired
    private ICategoriesService iCategoriesService;
    @GetMapping("")
    public String listGenreMovie(Model model){
        List<Category> listGenres = iCategoriesService.getListCategory();
        model.addAttribute("listcategories",listGenres);
        return "admin/newscategory/index";
    }
    @GetMapping("/add")
    public String add(Model model, AddCategoriesRequest  addGenreRequest){
        model.addAttribute("addGenreRequest",addGenreRequest);
        return "admin/newscategory/add";
    }

    @GetMapping("/edit")
    public String edit(){
        return "admin/newscategory/edit";
    }
}
