package org.example.film.services.favourites;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Account;
import org.example.film.models.entities.Favourites;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.favourites.AddFavouritesRequest;
import org.example.film.repositories.IAccountRepository;
import org.example.film.repositories.IFavouritesRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class AddFavouritesService implements IRequestHandler<AddFavouritesRequest,String> {

    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private IFavouritesRepository iFavouritesRepository;

    @Autowired
    private IAccountRepository iAccountRepository;

    @Override
    public HandleResponse<String> handle(AddFavouritesRequest addFavouritesRequest) throws Exception {
        Optional<Movies> existingMovie = iMoviesRepository.findById(addFavouritesRequest.getMovies());
        Optional<Account> existingAccount = iAccountRepository.findById(addFavouritesRequest.getAccount());

        if (existingMovie.isEmpty() || existingAccount.isEmpty()) {
            return HandleResponse.error("Movie or Account not found");
        }

        Optional<Favourites> existingFavouritesMovie = iFavouritesRepository.findByMoviesAndAccount(existingMovie.get(), existingAccount.get());

        if (existingFavouritesMovie.isPresent()) {
            iFavouritesRepository.delete(existingFavouritesMovie.get());
            return HandleResponse.ok("Delete Favourit Movie successfully : " + existingMovie.get().getName());
        } else {
            Favourites setFavourite = Favourites.builder()
                    .movies(existingMovie.get())
                    .account(existingAccount.get())
                    .favouriteAt(new Date())
                    .status(1) // Set status to 1 for added favourite
                    .build();
            iFavouritesRepository.save(setFavourite);
            return HandleResponse.ok("Add Favourit Movie successfully : " + existingMovie.get().getName());
        }
    }
}