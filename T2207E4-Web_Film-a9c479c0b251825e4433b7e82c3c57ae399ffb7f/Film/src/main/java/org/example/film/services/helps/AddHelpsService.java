package org.example.film.services.helps;


import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Help;
import org.example.film.models.requests.helps.AddHelpRequest;
import org.example.film.repositories.IHelpsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AddHelpsService implements IRequestHandler<AddHelpRequest,String> {

    @Autowired
    private IHelpsRepository iHelpsRepository;
    @Override
    public HandleResponse<String> handle(AddHelpRequest addHelpRequest) throws Exception {
        if(iHelpsRepository.findByQuestion(addHelpRequest.getAnswer()).isPresent()){
            return HandleResponse.error("help already exists");
        }else {
            Help help = new Help();
            help.setQuestion(addHelpRequest.getQuestion());
            help.setAnswer(addHelpRequest.getAnswer());
            help.setStatus(addHelpRequest.getStatus());
            iHelpsRepository.save(help);
            return HandleResponse.ok("Help successfully added : " + help.getQuestion());
        }
    }
}
