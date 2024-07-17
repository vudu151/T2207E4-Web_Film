package org.example.film.services.directors;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Director;
import org.example.film.models.entities.Movies;
import org.example.film.models.requests.directors.EditDirectorRequest;
import org.example.film.models.requests.writers.EditWriterRequest;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.repositories.IDirectorRepository;
import org.example.film.repositories.IMoviesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class EditDirectorsService implements IRequestHandler<EditDirectorRequest,String> {
    @Autowired
    private IMoviesRepository iMoviesRepository;

    @Autowired
    private ICelebrityRepository iCelebrityRepository;

    @Autowired
    private IDirectorRepository iDirectorRepository;
    @Override
    public HandleResponse<String> handle(EditDirectorRequest editDirectorRequest) throws Exception {
        Optional<Director> existingDirector = iDirectorRepository.findById(editDirectorRequest.getId());
        Optional<Movies> exitingMovies = iMoviesRepository.findById(editDirectorRequest.getMovies());
        Optional<Celebrity> exitingCelebrity = iCelebrityRepository.findById(editDirectorRequest.getCelebrities());
        if (existingDirector.isEmpty()){
            return HandleResponse.error("Director id does not exist.");
        }else {
            Director setDirector = existingDirector.get();
            setDirector.setMovies(exitingMovies.get());
            setDirector.setCelebrity(exitingCelebrity.get());
            setDirector.setStatus(editDirectorRequest.getStatus());
            iDirectorRepository.save(setDirector);
            return HandleResponse.ok("Writer successfully added : " + setDirector.getId());
        }
    }
}
