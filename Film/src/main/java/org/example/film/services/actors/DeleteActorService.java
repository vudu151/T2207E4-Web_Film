package org.example.film.services.actors;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Actors;
import org.example.film.models.requests.actors.DeleteActorRequest;
import org.example.film.repositories.IActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DeleteActorService implements IRequestHandler<DeleteActorRequest,String> {

    @Autowired
    private IActorRepository iActorRepository;
    @Override
    public HandleResponse<String> handle(DeleteActorRequest deleteActorRequest) throws Exception {
        Optional<Actors> exitingActor = Optional.ofNullable(iActorRepository.findActorsById(deleteActorRequest.getId()));
        if (exitingActor.isEmpty()){
            return HandleResponse.error("Actor does not exist.");
        } else {
            iActorRepository.delete(exitingActor.get());
            return HandleResponse.ok("Delete Actor successfully.");
        }
    }
}
