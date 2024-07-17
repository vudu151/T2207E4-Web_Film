package org.example.film.services.directors;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Director;
import org.example.film.models.requests.directors.DeleteDirectorRequest;
import org.example.film.models.requests.writers.DeleteWriterRequest;
import org.example.film.repositories.IDirectorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DeleteDirectorService implements IRequestHandler<DeleteDirectorRequest,String> {

    @Autowired
    private IDirectorRepository iDirectorRepository;
    @Override
    public HandleResponse<String> handle(DeleteDirectorRequest deleteDirectorRequest) throws Exception {
        Optional<Director> existingDirector = iDirectorRepository.findById(deleteDirectorRequest.getId());
        if (existingDirector.isEmpty()){
            return HandleResponse.error("Director does not exist.");
        } else {
            iDirectorRepository.delete(existingDirector.get());
            return HandleResponse.ok("Delete director successfully.");
        }
    }
}
