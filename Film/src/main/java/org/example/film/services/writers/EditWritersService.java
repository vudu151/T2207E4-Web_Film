package org.example.film.services.writers;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Movies;
import org.example.film.models.entities.Writers;
import org.example.film.models.requests.writers.EditWriterRequest;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.repositories.IMoviesRepository;
import org.example.film.repositories.IWriterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class EditWritersService implements IRequestHandler<EditWriterRequest,String> {
    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private ICelebrityRepository iCelebrityRepository;

    @Autowired
    private IWriterRepository iWriterRepository;
    @Override
    public HandleResponse<String> handle(EditWriterRequest editWriterRequest) throws Exception {
        Optional<Writers> exitingWriters = iWriterRepository.findById(editWriterRequest.getId());
        Optional<Movies> exitingMovies = iMoviesRepository.findById(editWriterRequest.getMovies());
        Optional<Celebrity> exitingCelebrity = iCelebrityRepository.findById(editWriterRequest.getCelebrities());
        if (exitingWriters.isEmpty()){
            return HandleResponse.error("Writer id does not exist.");
        } else {
            Writers setWriter = exitingWriters.get();
            setWriter.setMovies(exitingMovies.get());
            setWriter.setCelebrity(exitingCelebrity.get());
            setWriter.setStatus(editWriterRequest.getStatus());
            iWriterRepository.save(setWriter);
            return HandleResponse.ok("Writer successfully added : " + setWriter.getId());
        }
    }
}
