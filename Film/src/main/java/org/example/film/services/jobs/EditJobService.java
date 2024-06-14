package org.example.film.services.jobs;

import com.github.slugify.Slugify;
import org.example.film.commons.cqrs.HandleResponse;
import org.example.film.commons.cqrs.IRequestHandler;
import org.example.film.models.entities.Job;
import org.example.film.models.requests.jobs.EditJobRequest;
import org.example.film.repositories.IJobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EditJobService implements IRequestHandler<EditJobRequest, String> {
    @Autowired
    private IJobRepository iJobRepository;

    @Override
    public HandleResponse<String> handle(EditJobRequest editJobRequest) throws Exception {
        Optional<Job> jobExist = iJobRepository.findById(editJobRequest.getId());
        if(jobExist.isEmpty()){
            return HandleResponse.error("Job does not exist.");
        }
        Job job = jobExist.get();
        job.setName(editJobRequest.getName());
        Slugify slg = new Slugify();
        job.setSlug(slg.slugify(editJobRequest.getName()));
        iJobRepository.save(job);
        return HandleResponse.ok("Job successfully edited : " + job.getName());
    }
}
