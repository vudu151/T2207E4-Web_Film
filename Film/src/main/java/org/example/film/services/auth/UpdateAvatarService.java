package org.example.film.services.auth;

import lombok.RequiredArgsConstructor;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Account;
import org.example.film.models.requests.auth.UpdateAvatarRequest;
import org.example.film.repositories.IAccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UpdateAvatarService implements IRequestHandler<UpdateAvatarRequest,String> {

    @Autowired
    private IAccountRepository iAccountRepository;
    @Override
    public HandleResponse<String> handle(UpdateAvatarRequest updateAvatarRequest) throws Exception {
        Optional<Account> accountExiting = iAccountRepository.findById(updateAvatarRequest.getId());
        if (accountExiting.isEmpty()){
            return HandleResponse.error("account id does not exist.");
        } else {
            Account setAvatar = accountExiting.get();
            setAvatar.setAvatar(updateAvatarRequest.getAvatar());
            iAccountRepository.save(setAvatar);
            return HandleResponse.ok("Update avatar successfully added : " + setAvatar.getAvatar());
        }
    }
}
