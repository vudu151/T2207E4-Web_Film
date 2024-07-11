package org.example.film.services.actors;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Actors;
import org.example.film.models.requests.actors.AddActorRequest;
import org.example.film.repositories.IActorRepository;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddActorsService implements IRequestHandler<AddActorRequest,String> {

    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private ICelebrityRepository iCelebrityRepository;

    @Autowired
    private IActorRepository iActorRepository;
    @Override
    public HandleResponse<String> handle(AddActorRequest addActorRequest) throws Exception {
        var exitingMovie = iMoviesRepository.findById(addActorRequest.getMovies());
        var exitingCelebrity = iCelebrityRepository.findById(addActorRequest.getCelebrities());
        if (exitingMovie.isEmpty()){
            return HandleResponse.error("movies not data");
        } else if (exitingCelebrity.isEmpty()) {
            return HandleResponse.error("Celebrity not data");
        } else {
            Actors setActor = new Actors();
            setActor.setMovies(exitingMovie.get());
            setActor.setCharactor(addActorRequest.getCharactor());
            setActor.setCelebrity(exitingCelebrity.get());
            setActor.setStatus(addActorRequest.getStatus());
            iActorRepository.save(setActor);
            return HandleResponse.ok("Movies successfully added : " + setActor);
        }
    }
}
