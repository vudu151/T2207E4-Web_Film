package org.example.film.controllers;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Account;
import org.example.film.models.entities.Favourites;
import org.example.film.services.auth.IAccountsService;
import org.example.film.services.favourites.IFavouritesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user/favourite")
public class FavouriteMovieController {
    @Autowired
    private final IFavouritesService iFavouritesService;

    @Autowired
    private final IAccountsService iAccountsService;
    @GetMapping("/{id}")
    public String getFavouriteMovie(@PathVariable String id, Model model){
        Account getAccount = iAccountsService.getAccountById(id).get();
        List<Favourites> getFavourites = iFavouritesService.getListFavouritesAccount(getAccount.getId());
        model.addAttribute("getFavourites",getFavourites);
        return "public/auth/favourite";
    }
}
