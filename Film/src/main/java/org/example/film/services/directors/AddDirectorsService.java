package org.example.film.services.directors;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Director;
import org.example.film.models.requests.directors.AddDirectorRequest;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.repositories.IDirectorRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddDirectorsService implements IRequestHandler<AddDirectorRequest,String> {
    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private ICelebrityRepository iCelebrityRepository;

    @Autowired
    private IDirectorRepository iDirectorRepository;


    @Override
    public HandleResponse<String> handle(AddDirectorRequest addDirectorRequest) throws Exception {
        var exitingMovie = iMoviesRepository.findById(addDirectorRequest.getMovies());
        var exitingCelebrity = iCelebrityRepository.findById(addDirectorRequest.getCelebrities());
        if (exitingMovie.isEmpty()){
            return HandleResponse.error("movies not data");
        } else if (exitingCelebrity.isEmpty()) {
            return HandleResponse.error("Celebrity not data");
        } else {
            Director setDirector = new Director();
            setDirector.setMovies(exitingMovie.get());
            setDirector.setCelebrity(exitingCelebrity.get());
            setDirector.setStatus(addDirectorRequest.getStatus());
            iDirectorRepository.save(setDirector);
            return HandleResponse.ok("Writer successfully added : " + setDirector.toString());
        }
    }
}
