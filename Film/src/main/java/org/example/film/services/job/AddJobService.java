package org.example.film.services.job;

import com.github.slugify.Slugify;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Job;
import org.example.film.models.requests.job.AddJobRequest;
import org.example.film.repositories.IJobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddJobService implements IRequestHandler<AddJobRequest, String> {
    @Autowired
    private IJobRepository iJobRepository;

    @Override
    public HandleResponse<String> handle(AddJobRequest addJobRequest) throws Exception {
        if(iJobRepository.findByName(addJobRequest.getName()).isPresent()){
            return HandleResponse.error("Job name already exists.");
        }

        Job job = new Job();
        job.setName(addJobRequest.getName());

        Slugify slg = new Slugify();
        job.setSlug(slg.slugify(addJobRequest.getName()));      //Create slug with name

        iJobRepository.save(job);
        return HandleResponse.ok("Job successfully added : " + job.getName());
    }
}
