package org.example.film.repositories;

import org.example.film.models.entities.Account;
import org.example.film.models.entities.Favourites;
import org.example.film.models.entities.Movies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface IFavouritesRepository extends JpaRepository<Favourites,String> {
    Optional<Favourites> findById(String id);
    List<Favourites> findAllByAccountId(String accountId);
    Optional<Favourites> findByMoviesAndAccount(Movies movies, Account account);
}

