package org.example.film.services.helps;

import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Help;
import org.example.film.models.requests.helps.EditHelpRequest;
import org.example.film.repositories.IHelpsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EditHelpsService implements IRequestHandler<EditHelpRequest,String> {
    @Autowired
    private IHelpsRepository iHelpsRepository;
    @Override
    public HandleResponse<String> handle(EditHelpRequest editHelpRequest) throws Exception {
        Optional<Help> helpsIdExist = iHelpsRepository.findById(editHelpRequest.getId());
        Optional<Help> helpNameExist = iHelpsRepository.findByQuestion(editHelpRequest.getQuestion());
        if (helpsIdExist.isEmpty()){
            return HandleResponse.error("help id does not exist.");
        } else if (helpNameExist.isPresent()) {
            return HandleResponse.error("help question does exist.");
        }else {
            Help help = helpsIdExist.get();
            help.setQuestion(editHelpRequest.getQuestion());
            help.setAnswer(editHelpRequest.getAnswer());
            help.setStatus(editHelpRequest.getStatus());
            iHelpsRepository.save(help);
            return HandleResponse.ok("help successfully Update : " + help.getQuestion());
        }
    }

}
