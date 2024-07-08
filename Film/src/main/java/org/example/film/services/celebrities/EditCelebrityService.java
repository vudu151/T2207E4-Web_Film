package org.example.film.services.celebrities;

import com.github.slugify.Slugify;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Celebrity;
import org.example.film.models.requests.celebrities.EditCelebrityRequest;
import org.example.film.repositories.ICelebrityRepository;
import org.example.film.repositories.IJobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class EditCelebrityService implements IRequestHandler<EditCelebrityRequest, String> {
    @Autowired
    private ICelebrityRepository iCelebrityRepository;
    @Autowired
    private IJobRepository iJobRepository;

    @Override
    public HandleResponse<String> handle(EditCelebrityRequest editCelebrityRequest) throws Exception {
        Optional<Celebrity> celebrityExist = iCelebrityRepository.findById(editCelebrityRequest.getId());
        if(celebrityExist.isEmpty()){
            return HandleResponse.error("Celebrity does not exist.");
        }

        var existingJob = iJobRepository.findAllById(editCelebrityRequest.getJobsId());
        if(existingJob.isEmpty()){
            return HandleResponse.error("Job does not exist.");
        }

        Celebrity celebrity = celebrityExist.get();
        celebrity.setName(editCelebrityRequest.getName());
        celebrity.setBirthday(editCelebrityRequest.getBirthday());
        celebrity.setCountry(editCelebrityRequest.getCountry());
        celebrity.setBio(editCelebrityRequest.getBio());
        celebrity.setPoster(editCelebrityRequest.getPoster());
        Slugify slg = new Slugify();
        celebrity.setSlug(slg.slugify(editCelebrityRequest.getName()));
        celebrity.setStatus(editCelebrityRequest.isStatus());
        celebrity.setJobs(existingJob);

        if(editCelebrityRequest.getImagesId() != null && !editCelebrityRequest.getImagesId().isEmpty()){
            celebrity.setImages(editCelebrityRequest.getImagesId());
        }

        iCelebrityRepository.save(celebrity);
        return HandleResponse.ok(celebrity.getId());
    }
}
