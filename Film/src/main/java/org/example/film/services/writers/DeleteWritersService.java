package org.example.film.services.writers;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Writers;
import org.example.film.models.requests.actors.DeleteActorRequest;
import org.example.film.models.requests.writers.DeleteWriterRequest;
import org.example.film.repositories.IWriterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DeleteWritersService implements IRequestHandler<DeleteWriterRequest,String> {
    @Autowired
    private IWriterRepository iWriterRepository;
    @Override
    public HandleResponse<String> handle(DeleteWriterRequest deleteWriterRequest) throws Exception {
        Optional<Writers> exitingWriter = iWriterRepository.findById(deleteWriterRequest.getId());
        if (exitingWriter.isEmpty()){
            return HandleResponse.error("Writer does not exist.");
        }else {
            iWriterRepository.delete(exitingWriter.get());
            return HandleResponse.ok("Delete Writer successfully.");
        }
    }
}
