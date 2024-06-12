package org.example.film.services.favourites;

import org.example.film.models.entities.Favourites;

import java.util.List;

public interface IFavouritesService {
    List<Favourites> getListFavouritesAccount(String id);
}
