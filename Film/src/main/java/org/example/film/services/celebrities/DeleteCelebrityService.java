package org.example.film.services.celebrities;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.entities.Job;
import org.example.film.models.requests.celebrities.DeleteCelebrityRequest;
import org.example.film.repositories.ICelebrityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DeleteCelebrityService implements IRequestHandler<DeleteCelebrityRequest, String> {
    @Autowired
    private ICelebrityRepository iCelebrityRepository;

    @Override
    public HandleResponse<String> handle(DeleteCelebrityRequest deleteCelebrityRequest) throws Exception {
        Optional<Celebrity> celebrityExist = iCelebrityRepository.findById(deleteCelebrityRequest.getId());
        if(celebrityExist.isEmpty()){
            return HandleResponse.error("Celebrity does not exist.");
        }
        iCelebrityRepository.delete(celebrityExist.get());
        return HandleResponse.ok("Delete celebrity successfully.");
    }
}
