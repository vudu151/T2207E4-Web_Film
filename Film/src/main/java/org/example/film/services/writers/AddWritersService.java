package org.example.film.services.writers;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Writers;
import org.example.film.models.requests.writers.AddWriterRequest;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.repositories.IMoviesRepository;
import org.example.film.repositories.IWriterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddWritersService implements IRequestHandler<AddWriterRequest,String> {

    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private ICelebrityRepository iCelebrityRepository;

    @Autowired
    private IWriterRepository iWriterRepository;
    @Override
    public HandleResponse<String> handle(AddWriterRequest addWriterRequest) throws Exception {
        var exitingMovie = iMoviesRepository.findById(addWriterRequest.getMovies());
        var exitingCelebrity = iCelebrityRepository.findById(addWriterRequest.getCelebrities());
        if (exitingMovie.isEmpty()){
            return HandleResponse.error("movies not data");
        } else if (exitingCelebrity.isEmpty()) {
            return HandleResponse.error("Celebrity not data");
        } else {
            Writers setWriter = new Writers();
            setWriter.setMovies(exitingMovie.get());
            setWriter.setCelebrity(exitingCelebrity.get());
            setWriter.setStatus(addWriterRequest.getStatus());
            iWriterRepository.save(setWriter);
            return HandleResponse.ok("Writer successfully added : " + setWriter);
        }
    }
}
