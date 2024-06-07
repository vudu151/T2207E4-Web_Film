package org.example.film.services.helps;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Help;
import org.example.film.models.requests.helps.DeleteHelpRequest;
import org.example.film.repositories.IHelpsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class DeleteHelpsService implements IRequestHandler<DeleteHelpRequest,String> {
    @Autowired
    private IHelpsRepository iHelpsRepository;
    @Override
    public HandleResponse<String> handle(DeleteHelpRequest editHelpRequest) throws Exception {
        Optional<Help> helpIdExist = iHelpsRepository.findById(editHelpRequest.getId());
        if(helpIdExist.isEmpty()){
            return HandleResponse.error("Help does not exist.");
        }else {
            iHelpsRepository.delete(helpIdExist.get());
            return HandleResponse.ok("Help delete successfully.");
        }
    }
}
