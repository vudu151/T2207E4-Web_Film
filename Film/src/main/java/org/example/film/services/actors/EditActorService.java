package org.example.film.services.actors;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Actors;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.actors.EditActorRequest;
import org.example.film.models.requests.movies.EditMovieRequest;
import org.example.film.repositories.IActorRepository;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class EditActorService implements IRequestHandler<EditActorRequest,String> {

    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private ICelebrityRepository iCelebrityRepository;

    @Autowired
    private IActorRepository iActorRepository;
    @Override
    public HandleResponse<String> handle(EditActorRequest editActorRequest) throws Exception {
        Optional<Actors> exitingActors = iActorRepository.findById(editActorRequest.getId());
        Optional<Movies> exitingMovies = iMoviesRepository.findById(editActorRequest.getMovies());
        Optional<Celebrity> exitingCelebrity = iCelebrityRepository.findById(editActorRequest.getCelebrities());
        if (exitingCelebrity.isEmpty()){
            return HandleResponse.error("Actor id does not exist.");
        } else {
            Actors setActor = exitingActors.get();
            setActor.setMovies(exitingMovies.get());
            setActor.setCharactor(editActorRequest.getCharactor());
            setActor.setCelebrity(exitingCelebrity.get());
            setActor.setStatus(editActorRequest.getStatus());
            iActorRepository.save(setActor);
            return HandleResponse.ok("Actors successfully added : " + setActor.getId());
        }
    }
}
