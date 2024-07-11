package org.example.film.services.favourites;

import org.example.film.models.entities.Account;
import org.example.film.models.entities.Favourites;
import org.example.film.models.entities.Movies;

import java.util.List;
import java.util.Optional;

public interface IFavouritesService {
    List<Favourites> getListFavouritesAccount(String id);

    Optional<Favourites> getFavoutiteAccountAndMovie(Movies movies, Account account);
}
