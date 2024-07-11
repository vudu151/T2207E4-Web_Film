package org.example.film.services.favourites;

import lombok.RequiredArgsConstructor;
import org.example.film.models.entities.Account;
import org.example.film.models.entities.Favourites;
import org.example.film.models.entities.Movies;
import org.example.film.repositories.IFavouritesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class FavouritesService implements IFavouritesService{

    @Autowired
    private IFavouritesRepository iFavouritesRepository;
    @Override
    public List<Favourites> getListFavouritesAccount(String accountId) {
        return iFavouritesRepository.findAllByAccountId(accountId);
    }

    @Override
    public Optional<Favourites> getFavoutiteAccountAndMovie(Movies movies, Account account) {
        return iFavouritesRepository.findByMoviesAndAccount(movies,account);
    }
}
