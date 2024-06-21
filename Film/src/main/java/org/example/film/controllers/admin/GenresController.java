package org.example.film.controllers.admin;

import org.example.film.models.entities.Genre;
import org.example.film.models.requests.genres.AddGenreRequest;
import org.example.film.services.genres.IGenresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("admin-genresMovies")
public class GenresController {
    @Autowired
    private IGenresService iGenresService;

    @GetMapping("")
    public String listGenreMovie(Model model){
        List<Genre> listGenres = iGenresService.getListGenres();
        model.addAttribute("listGenres",listGenres);
        return "admin/genres/index";
    }
    @GetMapping("/add")
    public String add(Model model, AddGenreRequest addGenreRequest){
        model.addAttribute("addGenreRequest",addGenreRequest);
        return "admin/genres/add";
    }

    @GetMapping("/edit")
    public String edit(){
        return "admin/genres/edit";
    }

}
